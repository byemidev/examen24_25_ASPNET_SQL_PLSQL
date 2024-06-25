using academiaMVC.Models;
using Microsoft.AspNetCore.Mvc;
using System.Data.SqlClient;
using System.Diagnostics;

namespace academiaMVC.Controllers
{
    public class HomeController : Controller
    {
        private readonly SqlConnection _conexion; 
        private readonly IConfiguration _configuration; 
        private readonly ILogger _logger;   

        public HomeController(ILogger<HomeController> logger, IConfiguration configuration)
        {
            _logger = logger;   
            _configuration = configuration;
            _conexion = new SqlConnection(_configuration.GetConnectionString("DefaultConnection"));
        }

        //uso el controlador de home por que voy a mostrarlo en su index , y acceder a traves de este controlador a los datos de los cursos

        List<Curso> _cursos = new List<Curso>();    
        
        public IActionResult Index()
        {
            try
            {
                  
                _conexion.Open();
                using (var cmd = _conexion.CreateCommand())
                {
                    cmd.CommandText = @"SELECT id_curso, nombre FROM CURSO;";
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        Curso cursoaux = new Curso();
                        cursoaux.id = (int) reader[0];
                        cursoaux.nombre = reader[1].ToString();
                        _cursos.Add(cursoaux);
                    }
                }
            }
            catch (Exception)
            {
                return RedirectToRoute(new { action = "error" });
            }
            finally { _conexion.Close(); }
            return View(_cursos);
        }

        //alumnos matriculados en X curso
        List <Alumno> _alumnos = new List<Alumno>();    
        public IActionResult AlumnosMatriculados(int id) {
            try
            {
                _conexion.Open();
                Alumno alumnoaux = new Alumno();

                using (var cmd = _conexion.CreateCommand())
                {
                    cmd.CommandText = @"SELECT a.* FROM ALUMNO a JOIN MATRICULA m ON a.id_alumno = m.id_alumno JOIN CURSO c ON m.id_curso = c.id_curso WHERE c.id_curso = @id;";
                    cmd.Parameters.AddWithValue("@id", id);
                    SqlDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
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
            catch (Exception)
            {
                return RedirectToRoute(new { action = "error" });
            }

            return View(_alumnos);
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
