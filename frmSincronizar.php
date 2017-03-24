<?php
include_once ('clsServicio_matenimiento.php');
include_once ('clsInspeccion_visual.php');
include_once ('clsInspeccion_funcionamiento.php');
include_once ('clsDetalle_inspeccion_visual.php');
include_once ('clsDetalle_inspeccion_funcionamiento.php');

include_once('clsSistema_integral.php');
include_once('clsPuntuacion.php');
include_once('clsDetalle_puntuacion.php');
include_once('clsPeso.php');


switch ($_GET['opcion']) 
{
	case 'cargar_datos':


  $dato=json_decode(file_get_contents("php://input"),true);
   $js_servicio=$dato['servicio_mantenimiento'];
   $js_inspeccion_visual=$dato['inspeccion_visual'];
   $js_detalle_inspeccion_visual=$dato['detalle_inspeccion_visual'];
   $js_inspeccion_funcionamiento=$dato['inspeccion_funcionamiento'];
   $js_detalle_inspeccion_funcionamiento=$dato['detalle_inspeccion_funcionamiento'];

   $js_sistema_integral=$dato['sistema_integral'];
   $js_puntuacion=$dato['puntuacion'];
   $js_detalle_puntuacion=$dato['detalle_puntuacion'];
   $js_peso=$dato['peso'];
		

   cargar_datos_formulario($js_servicio,$js_inspeccion_visual,$js_detalle_inspeccion_visual,$js_inspeccion_funcionamiento,$js_detalle_inspeccion_funcionamiento);

   cargar_datos_Sistema_Integral($js_sistema_integral,$js_puntuacion,$js_detalle_puntuacion,$js_peso);
		break;
	
	default:
		
		break;
}

//REGISTRO DE LA MAQUINA SPRA-VAC
function cargar_datos_formulario($js_servicio,$js_inspeccion_visual,$js_detalle_inspeccion_visual,$js_inspeccion_funcionamiento,$js_detalle_inspeccion_funcionamiento)
{
	

    $array = json_decode($js_servicio);
    $total=0;
    $registrado=0;
  try
  {
    foreach($array as $obj)
    {
      //inicio se registro de SERVICIO MANTENIMIENTO.
            			     $id=$obj->id;
                        $fecha=$obj->fecha;
                        $hora_ingreso=$obj->hora_ingreso;
                        $hora_salidas=$obj->hora_salidas;
                        $codigo=$obj->codigo;
                        $revision=$obj->revision;
                        $firma_jefe_planta=$obj->firma_jefe;
                        $firma_invetsa=$obj->firma_invetsa;
                        $id_maquina=$obj->id_maquina;
                        $id_tecnico=$obj->id_tecnico;
                        $id_compania=$obj->id_compania;
                         $imei=$obj->imei;
                       
                       $servicio_m=new Servicio_Mantenimiento();


                       $servicio_m->Servicio_Mantenimiento2($codigo,$fecha,$firma_invetsa,$firma_jefe_planta,$hora_ingreso,$hora_salidas,$id_compania,$id_maquina,$id_tecnico,$revision,$id,$imei);


                       $exi=$servicio_m->existe_id_sqlite($id,$imei);
            
                       if($exi==false)
                       {
                        $g=$servicio_m->guardar();

                       	 if($g==true)
                       	 {
                       	 	$registrado=$registrado+1;
                       	 }
                        
                       } 



                       $total=$total+1;               
    }
  //fin del registro del SERVICIO MANTENIMIENTO..

  if($registrado>0)
  {

  // Inicio de registro de INSPECCION VISUAL si se registro correctamente en SERVICIO MANTENIMIENTO.
  $array = json_decode($js_inspeccion_visual);

  foreach($array as $obj)
  {
    //inicio se registro de INSPECCION VISUAL.
                      $id=$obj->id;
                      $observaciones=$obj->observaciones;
                      $piesas_cambiadas=$obj->piesas_cambiadas;
                      $id_sqlite=$obj->id_servicio;
                      $imei=$obj->imei;    

                      $servicio_m=new Servicio_Mantenimiento();
                     $id_servicio=$servicio_m->get_id_por_sqlite($id_sqlite,$imei);
                     
                     $inspeccion_v=new Inspeccion_visual();


                     $inspeccion_v->preparar($observaciones,$piesas_cambiadas,$id_servicio,$id,$imei);
                     $exi=$inspeccion_v->existe_id_sqlite($id,$imei);
                     if($id_servicio!=-1 && $exi==false)
                     {

                      $g=$inspeccion_v->guardar();
                      
                     } 
                                  
  }
// Fin de registro de INSPECCION VISUAL si se registro correctamente en SERVICIO MANTENIMIENTO.     

  // Inicio de registro de DETALLE INSPECCION VISUAL si se registro correctamente en SERVICIO MANTENIMIENTO.
  $array = json_decode($js_detalle_inspeccion_visual);

  foreach($array as $obj)
  {
  //inicio se registro de DETALLE INSPECCION VISUAL.
                     $id=$obj->id;
                    $id_inspeccion=$obj->id_inspeccion;
                    $codigo=$obj->codigo;
                    $descripcion=$obj->descripcion;
                    $estado=$obj->estado;
                    $imei=$obj->imei;
                   
                 
                   $inspeccion_v=new Inspeccion_visual();
                   $id_inspeccion_v=$inspeccion_v->get_id_por_sqlite($id_inspeccion,$imei);
                  
                   $detalle_inspeccion_v=new Detalle_inspeccion_visual();
                   $detalle_inspeccion_v->preparar($codigo,$descripcion,$estado,$id,$id_inspeccion_v,$imei);
  
                   if($id_inspeccion_v!=-1)
                   {     
                    $g=$detalle_inspeccion_v->guardar();
                    
                   }
                   else {
                      
                    } 
                                
  }
  // Fin de registro de DETALLE INSPECCION VISUAL si se registro correctamente en SERVICIO MANTENIMIENTO.               


  // Inicio de registro de INSPECCION FUNCIONAMIENTO si se registro correctamente en SERVICIO MANTENIMIENTO.

  $array = json_decode($js_inspeccion_funcionamiento);
  foreach($array as $obj)
  {
  //inicio se registro de SERVICIO MANTENIMIENTO.
                    $id=$obj->id;
                    $observaciones=$obj->observaciones;
                    $frecuencia_de_uso=$obj->frecuencia;
                    $id_sqlite=$obj->id_servicio;
                     $imei=$obj->imei;

                    $servicio_m=new Servicio_Mantenimiento();
                   $id_servicio=$servicio_m->get_id_por_sqlite($id_sqlite,$imei);
                   
                   $inspeccion_f=new Inspeccion_funcionamiento();


                   $inspeccion_f->preparar($observaciones,$frecuencia_de_uso,$id_servicio,$id,$imei);
        
                   $exi=$inspeccion_f->existe_id_sqlite($id,$imei);
                   if($id_servicio!=-1 && $exi==false)
                   {
                    $g=$inspeccion_f->guardar();
                    
                   } 
                                
  }
  // Fin de registro de INSPECCION FUNCIONAMIENTO si se registro correctamente en SERVICIO MANTENIMIENTO.     

  // Inicio de registro de DETALLE INSPECCION FUNCIONAMIENTO si se registro correctamente en SERVICIO MANTENIMIENTO.
  $array = json_decode($js_detalle_inspeccion_funcionamiento);
  foreach($array as $obj)
  {
  //inicio se registro de DETALLE INSPECCION FUNCIONAMIENTO.
                     $id=$obj->id;
                    $id_inspeccion=$obj->id_inspeccion;
                    $criterio_evaluacion=$obj->criterio_evaluacion;
                    $estado=$obj->estado;
                    $imei=$obj->imei;
                   
                   
                   $inspeccion_f=new Inspeccion_funcionamiento();
                   $id_inspeccion_f=$inspeccion_f->get_id_por_sqlite($id_inspeccion,$imei);
                  
                   $detalle_inspeccion_f=new detalle_inspeccion_funcionamiento();
                   $detalle_inspeccion_f->preparar($criterio_evaluacion,$estado,$id,$id_inspeccion_f,$imei);
        
                   if($id_inspeccion_f!=-1)
                   {
                    $g=$detalle_inspeccion_f->guardar();
                    
                   }                                
  }
  // Fin de registro de DETALLE INSPECCION FUNCIONAMIENTO si se registro correctamente en SERVICIO MANTENIMIENTO. 

  }//fin del If registrado



  print json_encode(array("mensaje"=>'Se guardo correctamente'.$registrado."/".$total,"suceso"=>"1"));
  
  } //fin de Try


  catch(Exception $e)
  {
  print json_encode(array("mensaje"=>'Error al registrar.',"suceso"=>"2"));
  }

  } //fin de funcion cargar datos


  //sistema integral de monitoreo
  function cargar_datos_Sistema_Integral($js_sistema_integral,$js_puntuacion,$js_detalle_puntuacion,$js_peso)
  {
    $array=json_decode($js_sistema_integral);
    $total=0;
    $registrado=0;
    
    try
    {
        foreach($array as $obj)
        {
            $id=$obj->id;
            $codigo=$obj->codigo;
            $revision=$obj->revision;
            $edad=$obj->edad;
            $sexo=$obj->sexo;
            $observaciones=$obj->observaciones;
            $imagen1=$obj->imagen1;
            $imagen2=$obj->imagen2;
            $imagen3=$obj->imagen3;
            $imagen4=$obj->imagen4;
            $imagen5=$obj->imagen5;
            $fecha=$obj->fecha;
            $nro_pollos=$obj->nro_pollos;
            $id_galpon=$obj->id_galpon;
            $id_granja=$obj->id_granja;
            $id_empresa=$obj->id_empresa;
            $imei=$obj->imei;
            
            $sistema_integral_m=new Sistema_Integral();
            
            $sistema_integral_m->Sistema_Integral2($codigo,$edad,$id,$id_empresa,$id_galpon,$id_granja,$imagen1,$imagen2,$imagen3,$imagen4,$imagen5,$observaciones,$revision,$fecha,$nro_pollos,$sexo,$imei);
            $exi=$sistema_integral_m->exite_id_sqlite($id,$imei);
            
            if($exi==false)
            {
                $g=$sistema_integral_m->guardar();
                if($g==true)
                {
                    $registrado=$registrado+1;
                }
            }
            
            $total=$total+1; 
        } 
        
        if($registrado>0)
        {
            //inicio registro de Puntuacion
            $array=json_decode($js_puntuacion);
            
            foreach($array as $obj)
            {
               $id=$obj->id;
               $id_sistema=$obj->id_sistema;
               $nombre=$obj->nombre;
               $id_sqlite=$obj->id_sistema;
               
               $sistema_integral_m=new Sistema_Integral();
               $id_sistema=$sistema_integral_m->get_id_por_sqlite($id_sqlite,$imei);
               
               $puntuacion_s=new puntuacion();
               $puntuacion_s->preparar($id,$nombre,$id_sistema);
               $exi=$puntuacion_s->existe_id_sqlite($id);
               if($id_sistema!=-1&&$exi==false)
               {
                $g=$puntuacion_s->guardar();
               }
            }
            
            $array = json_decode($js_detalle_puntuacion);
            foreach($array as $obj)
            {
                //registro de Detalle Puntuacion
                $id=$obj->id;
                $nombre=$obj->nombre;
                $estado=$obj->estado;
                $id_puntuacion=$obj->id_puntuacion;
                
                $detalle_puntuacion_s= new Sistema_Integral();
                //continuar..... ultimo
            }
        
              
    }
  }catch(Exception $e)
  {
    print json_encode(array("mensaje"=>'Error al registrar.',"suceso"=>"2"));
  }
}
  //REGISTRO DE LA MAQUINA TWIN SHOT









?>