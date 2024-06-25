namespace academiaMVC.Models
{
    public class Alumno
    {
        
        public int id { get; set; } 
        public string nombre { get; set; }
        public string apellido1 { get; set; }
        public string apellido2 { get; set; }

        public string direccion { get; set; }
        
        public string fecha_nacimiento { get; set; }

        public string telefono { get; set; }

        public Alumno() { 
            //constructor vacio
        }

        public Alumno(string nombre, string apellido1, string apellido2, string direccion, string fecha_nacimiento, string telefono) {
            this.nombre = nombre;
            this.apellido1 = apellido1;
            this.apellido2 = apellido2;
            this.direccion = direccion;
            this.fecha_nacimiento = fecha_nacimiento; // var theDate = new DateOnly(2015, 10, 21);
            this.telefono = telefono;   
        }
    }
}
