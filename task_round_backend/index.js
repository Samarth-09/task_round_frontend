import mongoose from "mongoose";
import e from "express";
import cors from "cors";
import companyRouter from "./routes/companyRoutes.js";
const app = e();
app.use(e.raw());
app.use(e.urlencoded({ extended: true }));

app.use(cors());
app.use("/company", companyRouter);
mongoose
  .connect(
    "mongodb+srv://srparekh0909:payheHJrmp2WYQpd@cluster0.sc5r2yd.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0"
  )
  .then(() => {
    const port = process.env.PORT || 3000;
    app.listen(port, () => {
      console.log(`Connected: ${port}`);
    });

    app.get("/", (req, res) => {
      res.json({ msg: "Connected" });
    });
  });
