import mongoose from "mongoose";

const companySchema = new mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  address: {
    type: String,
    required: false,
  },
  phone: {
    type: String,
    required: false,
  },
  email: {
    type: String,
    required: false,
  },
  website: {
    type: String,
    required: false,
  },
  numberOfEmployees: {
    type: Number,
    required: false,
  },
  foundedDate: {
    type: Date,
    required: false,
  },
  industryType: {
    type: String,
    enum: ["Technology", "Finance", "Healthcare", "Retail", "Other"],
    required: true,
  },
  contacDetails: {
    type: [mongoose.Schema.ObjectId],
  },
});

const companyModel = mongoose.model("companies", companySchema);

export default companyModel;
