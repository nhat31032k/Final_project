import nodemailer from 'nodemailer'

export const transporter = nodemailer.createTransport({
	service: "gmail",
	auth: {
		user: "cabien13072000@gmail.com",
		pass: "01658458929aA",
	},
});

export const sendMail = (data) => {
    transporter.sendMail(data, function(error, info){
        if (error) {
            console.log(error);
          } else {
            console.log('Email sent: ' + info.response);
          }
    })
}





