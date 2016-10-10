<!-- <!-- app タグを定義 --> -->
<!-- <script type="riot/tag">     -->
<!--   <app>                      -->
<!--     <h1>{ title }</h1>       -->
<!--     this.title = opts.title; -->
<!--   </app>                     -->
<!-- </script>                    -->

<!-- <script type='riot/tag'>                             -->
<!-- <app>                                                -->
<!--   <h1>expressions</h1>                               -->
<!--   <ul>                                               -->
<!--     <li>{ name }</li>                                -->
<!--     <li>{ title || "タイトルないよー" }</li> -->
<!--     <li>{ flag ? 'ready' : 'loading' }</li>          -->
<!--     <li>{ new Date() }</li>                          -->
<!--     <li>{ Math.round(64.5) }</li>                    -->
<!--   </ul>                                              -->

<!--   this.name = 'phi';                                 -->
<!--   this.flag = false;                                 -->
<!-- </app>                                               -->
<!-- </script>                                            -->

<script type='riot/tag'>
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
</script>

