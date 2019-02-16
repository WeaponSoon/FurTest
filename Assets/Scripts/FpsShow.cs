using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FpsShow : MonoBehaviour
{
    [SerializeField]
    private Text FpsTxt;

    private float lastTime = 0;
    private float currentTime = 0;
    // Start is called before the first frame update
    void Start()
    {
        Application.targetFrameRate = -1;
        lastTime = 0;
        currentTime = 0;
    }

    // Update is called once per frame
    void Update()
    {
        currentTime = Time.time;
        FpsTxt.text = ((int)(1/(currentTime - lastTime))).ToString();
        lastTime = currentTime;
    }
}
