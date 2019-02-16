            struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				float2 uv : TEXCOORD0;
            };

			struct v2f
			{
				float2 uv : TEXCOORD0;
				UNITY_FOG_COORDS(1)
                float2 uv_fur : TEXCOORD2;
                float4 worldPos : TEXCOORD3;
				float4 vertex : SV_POSITION;
			};

            float _TimeScale;
            #define _LayerIdDiffScale 3
            #define _RangeScale 100
			sampler2D _MainTex;
			sampler2D _FurTex;
            sampler2D _Noisy;
			float4 _MainTex_ST;
            float4 _FurTex_ST;
            float4 _Noisy_ST;
			float3 _LayerOffset;
            float4 _UvOffset;
			v2f vert (appdata v)
			{
                
				v2f o;
				//float4 wndOff = tex2D(v.uv, _WndTex);
				

                //float uv_len = sqrt((trasd_uv.x - v.uv.x)*(trasd_uv.x - v.uv.x) + (trasd_uv.y - v.uv.y)*(trasd_uv.y - v.uv.y));
                float up_len = length(_LayerId * _LayerOffset);
                //float angle = atan2(uv_len, up_len);

                float4 offsetVet = float4(v.vertex.xyz + v.normal.xyz * up_len , v.vertex.w);
				o.vertex = UnityObjectToClipPos(offsetVet);

                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				o.uv_fur = TRANSFORM_TEX(v.uv, _FurTex);
                o.worldPos = mul(v.vertex, unity_ObjectToWorld);
                UNITY_TRANSFER_FOG(o,o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
                float time = _Time.g;
                //float4 wndOff = tex2D( _WndTex,i.uv);

                float2 uvOffset =  float2(sin((time) * _TimeScale + i.worldPos.x * 4), cos((time)* _TimeScale +  + i.worldPos.y * 4)) * 0.01;//_UvOffset.xy * 0.01;
                float2 trasd_uv = i.uv + uvOffset * _LayerId / _LayerIdDiffScale;
                float2 trasd_uv_fur = i.uv_fur + uvOffset * _LayerId / _LayerIdDiffScale;
				
                fixed4 no_col = tex2D(_Noisy, trasd_uv_fur);
                
                // sample the texture
                fixed4 col = tex2D(_MainTex, trasd_uv);
				fixed4 furAlpha = tex2D(_FurTex, trasd_uv_fur);
				clip(furAlpha.r - _LayerMask);
                clip(no_col.r-_LayerMask);
				// apply fog
				UNITY_APPLY_FOG(i.fogCoord, col);
                col.a = furAlpha.r - _LayerMask;
                col.r = col.r * no_col.r;
                col.g = col.g * no_col.g;
                col.b = col.b * no_col.b;
				return col;
			}