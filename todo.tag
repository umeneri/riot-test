<todo>
  <style>
    label.completed { text-decoration: line-through }
  </style>
  <h3>{ opts.title }</h3>
  <!-- <p each="{ name, i in arr }">{ i }: { name }</p> -->
  <ul>
    <li each={ items }>
        <!-- context: item Obj -->
      <label class={ completed: done }>
        <!-- parent == todo DOM-->
        <input type="checkbox" checked={ done } onclick={ parent.toggle }/>
      { title }
      </label>
    </li>
  </ul>

  <add-form></add-form>

<!--
  <form onsubmit={ add }>
    <input name="input" onkeyup={ edit }>
    <button disabled={ !text }>Add #{ items.length + 1 }</button>
  </form>
  -->

  <script>
      this.arr = [ true, 110, Math.random(), 'fourth']

    /* parent => window */

    /* console.log(this)   */
    /* console.log(parent) */

    this.disabled = true
    this.items = opts.items

    /* edit(e) {                                 */
    /*   this.text = e.target.value              */
    /* }                                         */

    /* add(e) {                                  */
    /*   if (this.text) {                        */
    /*     this.items.push({ title: this.text }) */
    /*     this.text = this.input.value = ''     */
    /*   }                                       */
    /* }                                         */

    // イベントハンドラ発動で自動発火
    this.on("update", function() {
      console.log('updated')
    })

    toggle(e) {
      var item = e.item
      item.done = !item.done
      /* console.log(item) */
      return true
    }

    // curious about all events ?
    this.on('mount update unmount', function(eventName) {
      console.info(eventName)
    })

    /* init_sortable() {                                */
    /*   $( ".sortable" ).sortable({                    */
    /*     helper: "clone",                             */
    /*     opacity: 0.7,                                */
    /*     placeholder: 'placeholder',                  */
    /*     connectWith: ".sortable",                    */
    /*     items: "> .ui-state-default",                */
    /*     dropOnEmpty: true,                           */
    /*     start: (e, ui) {                             */
    /*       ui.placeholder.height(ui.item.height()+22) */
    /*       $(this).sortable("refreshPositions")       */
    /*     },                                           */
    /*     stop: (e, ui) {                              */
    /*       sync_card()                                */
    /*     }                                            */
    /*   })                                             */

    /*   $( ".card_sortable" ).sortable({               */
    /*     helper: "clone",                             */
    /*     opacity: 0.7,                                */
    /*     placeholder: 'placeholder',                  */
    /*     stop: (e, ui) {                              */
    /*       sync_card()                                */
    /*     }                                            */
    /*   })                                             */
    /* }                                                */
  </script>
</todo>
