Shader "Unlit/FurTest1"
{
	Properties
	{
		//毛发颜色
		_MainTex ("Texture", 2D) = "white" {}
		//毛发Layer偏移
		_LayerOffset ("Layer Offset", Vector) = (0.01,0.01,0.01,0)
		//毛发蒙版，R通道为1时毛发最长，0时无毛发
		_FurTex ("Fur Texture", 2D) = "white" {}
		//Costume UV偏移 未使用
		_UvOffset("UV Offset", Vector) = (0,0,0,0)
		//噪点图，R通道有效，用于决定毛发密度
		_Noisy ("Noisy", 2D) = "white" {}
		//时间，用于控制快慢
		_TimeScale ("Time Scale", Float) = 3.0
	}
	SubShader
	{
		Tags { "RenderType"="Transparent" "Queue"="Transparent"}
		LOD 100
		Blend SrcAlpha OneMinusSrcAlpha 
		Cull Off
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 1
			#define _LayerMask 0.0
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 2
			#define _LayerMask 0.12
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 3
			#define _LayerMask 0.14
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 4
			#define _LayerMask 0.16
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 5
			#define _LayerMask 0.18
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 6
			#define _LayerMask 0.20
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 7
			#define _LayerMask 0.22
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 8
			#define _LayerMask 0.24
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 9
			#define _LayerMask 0.26
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 10
			#define _LayerMask 0.28
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 11
			#define _LayerMask 0.30
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 12
			#define _LayerMask 0.32
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 13
			#define _LayerMask 0.34
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 14
			#define _LayerMask 0.36
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 15
			#define _LayerMask 0.40
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 16
			#define _LayerMask 0.43
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 17
			#define _LayerMask 0.46
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 18
			#define _LayerMask 0.49
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 19
			#define _LayerMask 0.52
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 20
			#define _LayerMask 0.55
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 21
			#define _LayerMask 0.58
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 22
			#define _LayerMask 0.61
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 23
			#define _LayerMask 0.64
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 24
			#define _LayerMask 0.67
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 25
			#define _LayerMask 0.71
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 26
			#define _LayerMask 0.79
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 27
			#define _LayerMask 0.86
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			// make fog work
			#pragma multi_compile_fog
			
			#include "UnityCG.cginc"
			
			#define _LayerId 28
			#define _LayerMask 0.99
			#include "Assets/Shaders/FurPass.cginc"
			
			ENDCG
		}
		
	}
}
