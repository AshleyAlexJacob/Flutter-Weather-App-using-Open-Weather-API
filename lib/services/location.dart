import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';


class Location{
   double longitude;
   double latitude;

  Future <void> getLocation()async{
    try{Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.medium);
    this.latitude=position.latitude;
    this.longitude=position.longitude;
    }
    catch(e){
      print(e);
    }
  }

}