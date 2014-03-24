function loadPost(id){
	$.get("/post.json",{id:id})
		.success(function(data){
			$('#main_article').html(data.text)
		})
}