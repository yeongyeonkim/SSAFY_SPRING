package com.ssafy.edu.vue.help;

/* Ajax 결과 리턴용 Helper class*/
public class AjaxResult {
    private String result;/*결과담을 필드*/

    public AjaxResult() {
    }
    public AjaxResult(String result) {
        this.result = result;
    }

    public String getResult() {
        return result;
    }
    public void setResult(String result) {
        this.result = result;
    }
}
