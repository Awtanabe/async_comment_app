$(document).ready(function(){

   let form = $("#new_comment")
   form.on("submit", (e) => {
     e.preventDefault()
     let id = form.data("id")
     const formData = new FormData()
     formData.append("body", e.target[2].value)
     $.ajax({
       type: "POST",
       processData: false,
       url: `/products/${id}/comments`,
       headers: {
        'X-CSRF-Token': document.querySelector('meta[name=csrf-token]').getAttribute("content")
       },
       data: formData
     })
     .done((res) => {
       console.log(res)
     })

   })


});
