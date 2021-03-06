﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CourseProject
{
  static class Program
  {
    /// <summary>
    /// The main entry point for the application.
    /// </summary>
    public static ConnectionQuery connectionQuery;
    public static LoginForm loginForm;
    [STAThread]
    static void Main()
    {
      connectionQuery = new ConnectionQuery();
      Application.EnableVisualStyles();
      Application.SetCompatibleTextRenderingDefault(false);
      loginForm = new LoginForm();
      Application.Run(loginForm);
    }
  }
}
