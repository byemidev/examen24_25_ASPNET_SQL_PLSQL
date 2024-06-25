namespace academiaMVC.Models
{
    public class Curso 
    {
        public int id { get; set; }  
        public string nombre { get; set; }

        public Curso(int id, string nombre) { 
            this.id = id;
            this.nombre = nombre;
        }

        public Curso(){ 
            // constructor vacio
        }
    }
}
