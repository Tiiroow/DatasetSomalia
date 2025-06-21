import mongoose from "mongoose";

const datasetSchema = new mongoose.Schema({
    title: String,
    description: String,
    category: String,
    filePath: String,
    status: String,
    userId:{
        type: mongoose.Schema.Types.ObjectId,
        ref: "User"
    },
    createdAt: Date,
    updatedAt: Date,
},{timestamps:true});

const Dataset = mongoose.model("Dataset", datasetSchema);
export default Dataset;
