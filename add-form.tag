<add-form>
  <form onsubmit={ add }>
    <input name="input" onkeyup={ edit }/>
    <button disabled={ !text }>Add #{ parent.items.length + 1 }</button>
  </form>

  <script>
    console.log(this.parent);

    edit(e) {
      this.text = e.target.value
    }

    add(e) {
      if (this.text) {
        this.parent.items.push({ title: this.text })
        this.text = this.input.value = ''
        this.parent.update() //TODO 方向が逆
      }
    }
  </script>
</add-form>

