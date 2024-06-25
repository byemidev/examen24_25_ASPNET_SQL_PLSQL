using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;
using academiaMVC.Models;

namespace academiaMVC.Controllers
{
    public class AlumnoController : Controller
    {
        private readonly IConfiguration _configuracion;
        private readonly SqlConnection _conexion;

        public AlumnoController(IConfiguration configuracion) {
            _configuracion = configuracion;
            _conexion = new SqlConnection(_configuracion.GetConnectionString("DefaultConnection"));
        }

        //ver vista crete - formulario crear alumno 
        public IActionResult Create() {
            return View();
        }

        //ver vista Exito
        public IActionResult Exito() {
            return View();
        }
       
        //ver vista Error
        public IActionResult Error() {
            return View();
        }

        //para matricular en curso

        [HttpPost]
        public IActionResult MatricularEnDB(Matricula matricula) {
            try
            {
                _conexion.Open();
                using (var cmd = _conexion.CreateCommand()) {
                    Matricula aux_matricula = new Matricula(matricula.id_alumno, matricula.id_curso);
                    cmd.CommandText = @"INSERT INTO MATRICULA (id_alumno, id_curso, fecha_matriculacion) VALUES (@id1, @id2, '@fecha')";
                    cmd.Parameters.AddWithValue("@id1", aux_matricula.id_alumno);
                    cmd.Parameters.AddWithValue("@id2", aux_matricula.id_curso);
                    string fecha_matriculacion = aux_matricula.fecha_matriculacion.Year.ToString() + "-" + aux_matricula.fecha_matriculacion.Month.ToString() + "-" + aux_matricula.fecha_matriculacion.Day.ToString();
                    cmd.Parameters.AddWithValue("@fecha", fecha_matriculacion);

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {
                return RedirectToRoute(new { action = "error" });
            }
            finally{
                _conexion.Close();
            }
            return RedirectToRoute(new { action = "exito" });
        }

        Matricula matricula = null;
        public IActionResult MatricularEnCurso(int id) {
            matricula = new Matricula();
            matricula.id_alumno = id;
            return View(matricula);
        }


        //para guardar los detalles del alumno que deseo matricular en un curso
        Alumno alumnoaux = new Alumno();

        public IActionResult Matricular(int id)
        {
            try
            {
                _conexion.Open();   
                using (var cmd = _conexion.CreateCommand()) {
                    cmd.CommandText = "SELECT * FROM ALUMNO WHERE id_alumno = @id";
                    cmd.Parameters.AddWithValue("id", id);
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.Read()) { 
                        alumnoaux.id = (int)reader[0];
                        alumnoaux.nombre = reader[1].ToString();
                        alumnoaux.apellido1 = reader[2].ToString();
                        alumnoaux.apellido2 = reader[3].ToString();
                        alumnoaux.direccion = reader[4].ToString();
                        alumnoaux.fecha_nacimiento = reader[5].ToString();
                        alumnoaux.telefono = reader[6].ToString();
                    }
                }
            }
            catch (Exception)
            {

                return RedirectToRoute(new { action = "error" });
            }
            return View(alumnoaux);
        }

        //crear alumno desde la vista Create
        [HttpPost]
        public IActionResult CreateOnDB(Alumno alumno)
        {
            try
            {
                _conexion.Open();
                
                using (var cmd = _conexion.CreateCommand()) { 

                    cmd.CommandText = @"INSERT INTO ALUMNO (nombre, apellido1, apellido2, direccion, fecha_nacimiento, telefono) VALUES (@nombre, @ape1, @ape2, @dir, @fecha, @tel)";
                    cmd.Parameters.AddWithValue("@nombre", alumno.nombre);
                    cmd.Parameters.AddWithValue("@ape1", alumno.apellido1);
                    cmd.Parameters.AddWithValue("@ape2", alumno.apellido2);
                    cmd.Parameters.AddWithValue("@dir", alumno.direccion);
                    cmd.Parameters.AddWithValue("@fecha", alumno.fecha_nacimiento);
                    cmd.Parameters.AddWithValue("@tel", alumno.telefono);

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception)
            {

                return RedirectToRoute(new { action = "error" });
            }
            finally {
                _conexion.Close();
            }

            return RedirectToRoute(new { action = "index" });
        }

        //metodo para visualizar la vista en index para AlumnoController
        List<Alumno> _alumnos = new List<Alumno>();
        public IActionResult Index()
        {
            try
            {
                _conexion.Open();
                using (var cmd = _conexion.CreateCommand())
                {
                    cmd.CommandText = @"SELECT * FROM ALUMNO;";
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Alumno alumnoaux = new Alumno();    
                        alumnoaux.id = (int)reader[0];
                        alumnoaux.nombre = reader[1].ToString();
                        alumnoaux.apellido1 = reader[2].ToString();
                        alumnoaux.apellido2 = reader[3].ToString();
                        alumnoaux.direccion = reader[4].ToString();
                        alumnoaux.fecha_nacimiento = reader[5].ToString();
                        alumnoaux.telefono = reader[6].ToString();

                        _alumnos.Add(alumnoaux);
                    }

                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally { _conexion.Close(); }
            return View(_alumnos);
        }
    }
}
