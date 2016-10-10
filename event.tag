<app>
  <h1>Event handlers</h1>

  <button onclick='{click}'>click</button>

  <ul>
    <li each='{list}'>
      <button onclick='{clickItem}'>{name}</button>
    </li>
  </ul>

  this.list = [
    {name:'hoge'},
    {name:'foo'},
    {name:'bar'},
  ];

  this.click = function() {
    console.log('click されたよー');
  };

  this.clickItem = function(e) {
    console.log(e.item.name + 'が click されたよー');
  };
</app>
