namespace academiaMVC.Models
{
    public class Matricula
    {
        public int id_curso { get; set; }
        public int id_alumno { get; set; }    
        public DateOnly fecha_matriculacion { get; set; }  


        public Matricula()
        {
            //constructor vacio
        }

        public Matricula(int id_alumno, int id_curso) { 
            this.id_curso = id_curso;   
            this.id_alumno= id_alumno;   
            this.fecha_matriculacion = DateOnly.FromDateTime(DateTime.Now);
        }
    }
}
