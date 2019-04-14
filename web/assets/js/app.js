/* global $file */

(function($) {
    $(document).ready(function () {
        var handleChange = function () {
            var that = this;
            var $preview = document.getElementById('img-content');
            // Test si le champ contient l'attribut files
            if ('files' in that) {
                if (that.files.length === 0) {
                    if ($preview.children.length !== 1) {
                        var txt = 'Vueillez selectionner un ou plusieurs fichiers';
                        var span = document.createElement('span');
                        span.classList.add('alert');
                        span.classList.add('alert-warning');
                        span.innerHTML = txt;
                        $preview.appendChild(span);
                    }
                } else {
                    // Récupération du fichier séléctionné
                    var $file = that.files[0];
                    document.getElementById('img-content').children = null;
                    // Créér un élément de type image pour générer un apperçu de l'image selectionnée
                    var $img = document.createElement('img');
                    $img.classList.add('obj');
                    $img.classList.add('d-block');
                    $img.classList.add('rounded');
                    $img.classList.add('img-fluid');
                    $img.classList.add('shadow');
                    $img.style.width = '200px';
                    $img.style.height = '250px';

                    $img.file = $file;
                    $img.classList.remove('anime-img');
                    $img.classList.add('anime-img');

                    // Selection de la zone qui va contenir l'image et insertion de l'image
                    if ($preview.childNodes[0]) {
                        $preview.removeChild($preview.childNodes[0]);
                    }
                    $preview.appendChild($img);

                    // Création d'un objet FileReader qui qui gérera le chargement 
                    // asynchrone de l'image et son lien à l'élément $img.
                    var $reader = new FileReader();
                    $reader.onload = (function (aImg) { return function (e) { aImg.src = e.target.result; }; })($img);
                    $reader.readAsDataURL($file);
                }
            }
        };
        
        // Function permettant de récupérer le champ de type file et d'ajouter
        // un écouteur sur le dit champ.
        var createImage = function () {
            var $inputFile = document.getElementById('photo');
            $inputFile.addEventListener('change', handleChange, 'false');            
        };
        
        // Appel de la fonction createImage pour exécuter le code
        createImage();
    });
})(jQuery);