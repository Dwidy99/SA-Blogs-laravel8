// Posts
const titlePost = document.getElementById("title");
const slugPost = document.getElementById("slugPost");

if (titlePost) {
    titlePost.addEventListener("change", function () {
        fetch(`/dashboard/posts/checkSlug?title=${titlePost.value}`)
            .then((response) => response.json()) // Transform the data into json
            .then((data) => (slugPost.value = data.slug));
    });
}

// Category
const nameCategory = document.getElementById("name");
const slugCategory = document.getElementById("slugCategory");

if (nameCategory) {
    nameCategory.addEventListener("change", function () {
        fetch(`/dashboard/categories/checkSlug?name=${nameCategory.value}`)
            .then((response) => response.json()) // Transform the data into json
            .then((data) => (slugCategory.value = data.slug));
    });
}

// Text Editor
document.addEventListener("trix-file-accept", function (e) {
    e.preventDefault();
});

// Preview image
function previewImage() {
    const image = document.querySelector("#image");
    const imgPreview = document.querySelector(".img-preview");

    imgPreview.style.display = "block";

    const oFReader = new FileReader();
    oFReader.readAsDataURL(image.files[0]);

    oFReader.onload = function (oFREvent) {
        imgPreview.src = oFREvent.target.result;
    };
}
