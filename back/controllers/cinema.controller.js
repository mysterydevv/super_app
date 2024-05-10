const cinemaService = require('../services/cinema.service');
const Response = require('../utils/response');

const createCinema = async (req, res) => {
    try{
        const {name,address,phone,places,image,feedback} = req.body;
        const cinemaId = await cinemaService.createCinema(name,address,phone,places,image,feedback);
        res.send(Response.success(cinemaId));
    }
    catch (error){
        res.send(Response.error(error.message));
    }
}

const getCinema = async (req, res) => {
    try{
        const {id} = req.params;
        const cinema = await cinemaService.getCinema(id);
        res.send(Response.success(cinema));
    }
    catch (error){
        res.send(Response.error(error.message));
    }
}


const getAllCinemas = async (req, res) => {
    try{
        const cinemas = await cinemaService.getAllCinemas();
        res.send(Response.success(cinemas));
    }
    catch (error){
        res.send(Response.error(error.message));
    }
}

module.exports = {
    createCinema,
    getCinema,
    getAllCinemas
}