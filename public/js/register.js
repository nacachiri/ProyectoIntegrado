document.addEventListener("DOMContentLoaded", () => {

    let botonEnviar = document.getElementById('saveRegistro');

    botonEnviar.addEventListener('click', (e) => {

        e.preventDefault();

        let name = document.getElementsByName('name');
        let surnames = document.getElementsByName('surnames');
        let email = document.getElementsByName('email');
        let password = document.getElementsByName('password');
        let dni = document.getElementsByName('dni');
        let cp = document.getElementsByName('cp');

        console.log(name[0].value);
        console.log(surnames[0].value);
        console.log(email[0].value);
        console.log(password[0].value);
        console.log(dni[0].value);
        console.log(cp[0].value);

        if (name[0].value != null && surnames[0].value != null && name[0].value != '' && surnames[0].value != '' && email[0].value != null && password[0].value != null && email[0].value != '' && password[0].value != '' && dni[0].value != null && cp[0].value != null && dni[0].value != '' && cp[0].value != '') {

            axios.post('../src/registerUser.php', {

                name : name[0].value,
                surnames : surnames[0].value,
                password : password[0].value,
                email : email[0].value,
                dni : dni[0].value,
                cp : cp[0].value,
    
            }).then((response) => {
    
                if (response.data == 1) {

                    console.log('Se ha logueado correctamente');

                    // setTimeout(() => {
                    //     window.location.href = 'index.php';
                    // }, 3000);
                
                }else{

                    console.log('Alguno de los campos es erroneo');

                }

            })

        }else {

            console.log('Campos Vacios');

        }
        
        

    })

});