<app>
  <h1>expressions</h1>
  <ul>
    <li each='{list}' class='{done:done}'>{ title }</li>
  </ul>

  <style>
    li.done {
      color: #aaa;
      text-decoration: line-through;
    }
  </style>

  this.list = [
    {
      title: 'Hello, world!',
      done: false,
    },
    {
      title: '牛乳を買う',
      done: true,
    },
    {
      title: '豚肉を買う',
      done: false,
    },
  ];
</app>

