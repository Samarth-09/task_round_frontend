import e from "express";
const companyRouter = e.Router();

companyRouter.post("/uploadFile", (req, res) => {
  try {
    const file = req.files.file;
    console.log(file.name);
  } catch (error) {
    console.log(error);
  }
});

export default companyRouter;
