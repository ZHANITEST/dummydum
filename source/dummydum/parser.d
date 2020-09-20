/**
    dummydum - 테스트데이터 생성 도구
        .parser.d - JSON 데이터를 파싱한다.
    
    License: LGPL-2.1
    Copyleft 2020, ZHANITEST, github.com/zhanitest/dummydum
 */

module dummydum.parser;

//import std.json;
import stdx.data.json;
import stdx.data.json.value;

class JsonParser{
    private JSONValue jsonObj;
    private string[] errorMsgStack;
    this(string js){
        //this.jsonObj = parseJSON(js);
        this.jsonObj = toJSONValue(js);
    }

    bool dataVerify(){
        bool result = true;
        uint count = 0;
        if(jsonObj.hasType!(JSONValue[])()){
            result = false;
            this.errorMsgStack ~= "데이터 포맷 안맞음 - array";
        }
        //std.stdio.writeln(jsonObj.Payload);
        /*
        if(jsonObj.array.length <= 0){
            result = false;
            this.errorMsgStack ~= "데이터 포맷 길이가 매우 짧음";
        }
        JSONValue element = jsonObj.array[0];
        if(element.type != JSONType.object){
            result = false;
            this.errorMsgStack ~= "데이터 포맷의 첫번째 요소가 맞지 않음";
        }*/
        return result;
    }

    string[] getErrorMessages(){
        return this.errorMsgStack;
    }
}