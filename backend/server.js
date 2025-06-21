import express from "express";
import dotenv from "dotenv";
import userRoute from "./routes/userRoute.js";
import datasetRoute from "./routes/datasetRoutes.js";
import descriptionRoute from "./routes/descriptionRoutes.js";
import connectDB from "./config/db.js";

dotenv.config();
connectDB();
const app = express();
app.use(express.json());
app.use("/api/users", userRoute);
app.use("/api/datasets", datasetRoute);
app.use("/api/descriptions", descriptionRoute);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));