using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Chirkov_SQL__Окно_регестрации_
{
    public partial class RegisterForm : Form
    {
        public RegisterForm()
        {
            InitializeComponent();
            UserNameField.Text = "Введите имя";
            UserNameField.ForeColor = Color.Olive;
            UserSurnameField.Text = "Введите Фамилию";
            UserSurnameField.ForeColor = Color.Olive;
        }

        private void label3_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
        Point lastPoint;
        private void panel1_MouseMove(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                this.Left += e.X - lastPoint.X;
                this.Top += e.Y - lastPoint.Y;
            }
        }

        private void panel1_MouseDown(object sender, MouseEventArgs e)
        {
            lastPoint = new Point(e.X, e.Y);
        }

        private void UserNameFild_Enter(object sender, EventArgs e)
        {
            if (UserNameField.Text == "Введите имя")
                UserNameField.Text = "";
            UserNameField.ForeColor = Color.Black;
        }

        private void UserNameFild_Leave(object sender, EventArgs e)
        {
            if (UserNameField.Text == "")
            {
                UserNameField.Text = "Введите имя";
                UserNameField.ForeColor = Color.Olive;

            }

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox1_Enter(object sender, EventArgs e)
        {
            if (UserSurnameField.Text == "Введите Фамилию")
                UserSurnameField.Text = "";
            UserSurnameField.ForeColor = Color.Black;
        }

        private void textBox1_Leave(object sender, EventArgs e)
        {
            if (UserSurnameField.Text == "")
            {
                UserSurnameField.Text = "Введите Фамилию";
                UserSurnameField.ForeColor = Color.Olive;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (UserNameField.Text == "Введите имя")
            
            {
                MessageBox.Show("Введите имя");
                return;
            }
            if (UserSurnameField.Text == "")
            {
                MessageBox.Show("Введите фамилию");
                return;
            }
            if (isUserExists())
                return;

            DB db = new DB();
            MySqlCommand command = new MySqlCommand("INSERT INTO `user` ( `login`, `pass`, `name`, `surname`) VALUES (@login,@pass,@name,@surname)",db.GetConnection());

            command.Parameters.Add("login", MySqlDbType.VarChar).Value = loginField.Text;
            command.Parameters.Add("pass", MySqlDbType.VarChar).Value = passField.Text;
            command.Parameters.Add("name", MySqlDbType.VarChar).Value = UserNameField.Text;
      
           command.Parameters.Add("surname", MySqlDbType.VarChar).Value = UserSurnameField.Text;
           
            db.openConnection();

            if (command.ExecuteNonQuery() == 1)
                MessageBox.Show("Аккаунт был создан");
            else
                MessageBox.Show("Аккаунт не был создан");
           
            db.closeConnection();
        
        }

        public Boolean isUserExists()
        {
            DB db = new DB();
            DataTable table = new DataTable();
            MySqlDataAdapter adapter = new MySqlDataAdapter();

            MySqlCommand command = new MySqlCommand("SELECT * FROM `user` WHERE `login`=@uL" , db.GetConnection());
            command.Parameters.Add("@uL", MySqlDbType.VarChar).Value = loginField.Text; 
           

            adapter.SelectCommand = command;
            adapter.Fill(table);

            if (table.Rows.Count > 0)
            {
                MessageBox.Show("Такой логин уже есть,введите другой");
                return true;
            }

            else
                return false;
        }

        private void label4_Click(object sender, EventArgs e)
        {
            this.Hide();
            LoginForm loginForm = new LoginForm();
            loginForm.ShowDialog();
        }
    }
}
