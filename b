<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title>threejs - models</title>

    <style>
        body{
            margin: 0;
            overflow: hidden;



        }
    </style>

</head>
<body>
    <canavas id="myCanavas"></canavas>

    <script src="three.js"></script>
    <script src="GLTFLoader.js"></script>

    <script>


           var renderer,
                scene,
                camera,
                myCanvas = document.getElementById('myCanvas');

            //RENDERER
            renderer = new THREE.WebGLRenderer({
                canvas: myCanvas,
                antialias: true
            })
            renderer.setClearColor(0x000000);
        renderer.setPixelRatio(window.devicePixelRatio);
        render, serSize(window.innerWidth, windows.innerHeight);

            //CAMERA
            camera = new THREE.PerspectiveCamera(35, windows.innerWidth / window.innerHeight, 0.1, 1000);

            //SCENE
            scene = new THREE.Scene();

            //LIGHTS
            var light= new THREE.AmbientLight(0xffffff, 0.5);
        scene.add(light);

        var light2 = new THREE.PointLight(0xffffff, 0.5);

            var loader = new THREE.GLTFLoader();
        loader.load('untilted.glb', handle_load);


            var mesh;


            function handle_load(gltf) {

                mesh = gltf.scene.children[0];
                mesh.material = new THREE.MeshLambertMaterial();
                scene.add(mesh);
                mesh.position.z = -10;


            }


        //RENDER LOOP
        render();

        var delta = 0;
        var prevTime = Date.now();

        function render() {
            delta += 0.1;
            if (mesh) {
                mesh.rotation.y += 0.01;

                //animation mesh
                // mesh.morphTargetInfluences [0] = Math.sin(delta) * 20.0;
            }

            renderer.render(scene, camera);

            requestAnimationFrame(render);
        }
    </script>








</body>
</html>

