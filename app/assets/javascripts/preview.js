$('#file').click(function(){
    $('#file').change(function () {
        var file = this.files[0];
        var reader = new FileReader();
        reader.onloadend = function () {
           $('.preview').css('background-image', 'url("' + reader.result + '")');
        }
        if (file) {
            reader.readAsDataURL(file);
        } else {
        }
    });
});
