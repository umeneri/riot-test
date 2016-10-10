const obj = (() => {
  return {
    method() {
      alert('Hello Babel!');
    }
  };
})();


var name = 'ハル';
var age = 21;

var str = `私の名前は${name}です。${age}歳です`;

console.log(str); // 私の名前はハルです。21歳です


var array = [1, 5, 3];

var max = Math.max(...array);

console.log(max); // 5

// アロー関数
var show = (text) => {
  console.log(text);
};

// 引数が一つの時には()を省略可能
var show = text => {
  console.log(text);
};

// また一文の場合、{}とreturnの省略も可能。
var show = (text) => text + ' さようなら';

var text = show('こんにちは');
console.log(text); // こんにちは さようなら


