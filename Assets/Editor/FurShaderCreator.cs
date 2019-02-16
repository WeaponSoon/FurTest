using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FurShaderCreator : MonoBehaviour {

    static string MainCode =
"Shader \"Unlit/FurTest\"\n" +
"{\n" +
"    Properties\n" +
"    {\n" +
"        _MainTex(\"Texture\", 2D) = \"white\" {}\n" +
"        _LayerOffset(\"Layer Offset\", Vector) = (0.01,0.01,0.01,0)\n" +
"        _FurTex(\"Fur Texture\", 2D) = \"white\" {}\n" +
"    }\n" +
"    SubShader\n" +
"    {\n" +
"        Tags { \"RenderType\"=\"Opaque\" }\n" +
"        LOD 100\n"; 
    static string MainCodeEnd = 
"    }\n" +
"}";

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
