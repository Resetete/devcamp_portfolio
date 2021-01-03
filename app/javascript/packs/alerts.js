import Swal from 'sweetalert2';

let ready = () => {
    const type = $('#notification').data('type');
    const message = $('#notification').data('message');
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        timer: 1000,
        showConfirmButton: false,
        background: '#000',
        padding: '5px',
        timerProgressBar: true,
        onOpen: (toast) => {
            toast.addEventListener('mouseenter', Swal.stopTimer);
            toast.addEventListener('mouseleave', Swal.resumeTimer);
        }
    });

    Toast.fire({
        icon: type,
        title: message
    })
};
$('document').ready(ready);
