const nodemailer = require("nodemailer");

const transporter = nodemailer.createTransport({
  host: "smtp.sendgrid.net",
  port: 587,
  auth: {
    user: "apikey",
    pass: process.env.SENDGRID_API_KEY
  }
});

async function sendMail(to, subject, html) {
  try {
    await transporter.sendMail({
      from: `"QuizDS" <${process.env.EMAIL_USER}>`,
      to,
      subject,
      html, // ✅ recebe já pronto do controller
      replyTo: process.env.EMAIL_USER
    });
    console.log("Email enviado com sucesso!");
  } catch (err) {
    console.error("Erro ao enviar email:", err);
    throw err;
  }
}

module.exports = sendMail;
