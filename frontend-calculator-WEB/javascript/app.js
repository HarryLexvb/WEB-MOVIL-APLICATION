
function insertion_sort(){  
    var numbers = document.getElementById("arr").value;
    //var numbers = "7777,0,34,1,5,666,69,123";
    let n = numbers.length;  
    var convert=new Array();
    var bool=false;
    var k=0;
        if(numbers[n-1]!=' ' || numbers[n-1]!=','|| numbers[n-1]!=';')
        {
          numbers+=",";
        }
    n = numbers.length;  
    for(let f=0;f<n;f++){
      k++;
        if(numbers[f]==' ' || numbers[f]==','|| numbers[f]==';')
        {
          bool=true;
          k--;
        }
      if(bool==true){
        let inicio;
        if(f-k==0){
          var entra;
          entra=numbers[0];
          inicio=1;
        }
        else{
          var entra;
          entra=numbers[f-k];
          inicio=f-k+1;
        }
        //alert(f);
        //alert(k);
        for(let j=inicio;j<f;j++){
          entra+=numbers[j];
        }
        convert.push(parseInt(entra));
        k=0;
        bool=false;
      }
      //alert(convert);
    }
    for (let i = 1; i < convert.length; i++) {
        let k = convert[i];
        let j = i-1; 

        while ((j > -1) && (k < convert[j])) {
            convert[j+1] = convert[j];
            j--;
        }
        convert[j+1] = k;
    }
    //alert(convert);
    document.getElementById("result").innerHTML=convert;
}


function factorial() {
    
    var n = document.getElementById("num").value;
    var i, f=1;
    for(i=1; i<=n; i++)f*=i;
    document.getElementById("fact").innerHTML=f;
}

function fibonacci() {
    var number = document.getElementById("Nume").value;
    var i, num=1, anterior=0, aux;
    for(i=0; i<number-1;i++ ){
        aux=num;
        num=num+anterior;
        anterior = aux;
    }        
    document.getElementById("fibo").innerHTML=num;
}


function evaluation() { 
    var expression = document.getElementById("numero").value;
    let res=expression.replace(/\s+/g, "");
    let res1 = eval(expression);
    document.getElementById("resul").innerHTML=res1;
}
 
 if(typeof process === 'object') {
    module.exports =  {
        insertion_sort,
        factorial,
        fibonacci,
        evaluation
    };
}
