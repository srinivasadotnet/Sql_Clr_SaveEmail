using System;
using System.Data.SqlTypes;
using System.IO;
using System.Net.Mail;
using System.Reflection;

/// <summary>
/// The UserDefinedFunctions
/// </summary>
public partial class UserDefinedFunctions
{
    /// <summary>
    /// The SaveEmail function
    /// </summary>
    /// <param name="fromEmail">The fromEmail</param>
    /// <param name="toEmail">The toEmail</param>
    /// <param name="mailBody">The mailBody</param>
    /// <param name="mailSubject">The mailSubject</param>
    /// <param name="fileName">The fileName</param>
    /// <returns></returns>
    [Microsoft.SqlServer.Server.SqlFunction]
    public static SqlString SaveEmail(SqlString fromEmail, SqlString toEmail, SqlString ccEmail, SqlString bccEmail, SqlString mailBody, SqlString mailSubject, SqlString fileName)
    {
        // Validate whether given inputs valid or not. If Invalid return error message
        if (IsValidModel(fromEmail.Value, toEmail.Value, mailSubject.Value, mailBody.Value) == false)
        {
            return new SqlString("Invalid Inputs");
        }

        // Get Temp Path location
        string tempFilePath = Path.GetTempPath();

        // Validate fileName valid or not if not assign guid
        string mailFileName = string.IsNullOrWhiteSpace(fileName.Value) ? Guid.NewGuid().ToString() : fileName.Value;

        // Prepare result file path
        string resultPath = Path.Combine(tempFilePath, mailFileName + ".eml");

        try
        {
            // Create mailMessage object and save it in destination path
            using (MailMessage mailMessage = new MailMessage())
            {
                mailMessage.Body = mailBody.Value;
                mailMessage.From = new MailAddress(fromEmail.Value);
                mailMessage.To.Add(toEmail.Value);
                mailMessage.CC.Add(ccEmail.Value);
                mailMessage.Bcc.Add(bccEmail.Value);
                mailMessage.Subject = mailSubject.Value;
                Save(mailMessage, resultPath);
            }
        }
        catch (Exception ex)
        {
            // Something went wrong return exception message as result
            return new SqlString(ex.Message);
        }

        // return saved file path
        return new SqlString(resultPath);
    }

    /// <summary>
    /// The IsValidModel function
    /// </summary>
    /// <param name="fromMail">The fromMail</param>
    /// <param name="toMail">The toMail</param>
    /// <param name="subject">The subject</param>
    /// <param name="body">The body</param>
    /// <returns>returns true of false based on condition</returns>
    private static bool IsValidModel(string fromMail, string toMail, string subject, string body)
    {
        return !(string.IsNullOrWhiteSpace(fromMail) || string.IsNullOrWhiteSpace(toMail) || string.IsNullOrWhiteSpace(subject) || string.IsNullOrWhiteSpace(body));
    }

    /// <summary>
    /// The Save Function
    /// </summary>
    /// <param name="Message">The MailMessage object</param>
    /// <param name="fileName">The full file path</param>
    private static void Save(MailMessage Message, string fileName)
    {
        Assembly assembly = typeof(System.Net.Mail.SmtpClient).Assembly;
        Type _mailWriterType = assembly.GetType("System.Net.Mail.MailWriter");

        using (FileStream _fileStream = new FileStream(fileName, FileMode.Create))
        {
            // Get reflection info for MailWriter contructor
            ConstructorInfo _mailWriterContructor = _mailWriterType.GetConstructor(BindingFlags.Instance | BindingFlags.NonPublic, null, new[] { typeof(Stream) }, null);

            // Construct MailWriter object with our FileStream
            object _mailWriter = _mailWriterContructor.Invoke(new object[] { _fileStream });

            // Get reflection info for Send() method on MailMessage
            MethodInfo _sendMethod = typeof(MailMessage).GetMethod("Send", BindingFlags.Instance | BindingFlags.NonPublic);

            // Call method passing in MailWriter
            _sendMethod.Invoke(Message, BindingFlags.Instance | BindingFlags.NonPublic, null, new[] { _mailWriter, true, true }, null);

            // Finally get reflection info for Close() method on our MailWriter
            MethodInfo _closeMethod = _mailWriter.GetType().GetMethod("Close", BindingFlags.Instance | BindingFlags.NonPublic);

            // Call close method
            _closeMethod.Invoke(_mailWriter, BindingFlags.Instance | BindingFlags.NonPublic, null, new object[] { }, null);
        }
    }
}
