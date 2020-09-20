/**
    dummydum - 테스트데이터 생성 도구
        .request.d - 데이터 생성요청 서식타입을 정의한다.
    
    License: LGPL-2.1
    Copyleft 2020, ZHANITEST, github.com/zhanitest/dummydum
 */

module dummydum.request;

/**
    RequestForm
        데이터 생성요청 서식타입을 정의한다.
 */
struct RequestForm{
    private:
        string column; /// 컬럼명
        string type;   /// 타입
    
    /**
        생성자
     */
    this(string column, string type){
        this.column = column;
        this.type = type;
    }

    /**
        [Getter] RequestForm.column
     */
    public string getColoumn(){
        return this.column;
    }

    /**
        [Getter] RequestForm.type
     */
    public string getType(){
        return this.type;
    }
}