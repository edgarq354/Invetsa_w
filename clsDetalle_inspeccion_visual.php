<?php
include_once('clsConexion.php');
class Detalle_inspeccion_visual extends Conexion
{
	private $codigo;
	private $descripcion;
	private $estado;
	private $id;
	private $id_inspeccion;
	private $imei;

	public function Detalle_inspeccion_visual()
	{
		parent::Conexion();
		$this->codigo=0;
		$this->descripcion="";
		$this->estado="";
		$this->id=0;
		$this->id_inspeccion=0;
		$this->imei="";
	}
	public function preparar($codigo,$descripcion,$estado,$id,$id_inspeccion,$imei)
	{
		$this->codigo=$codigo;
		$this->descripcion=$descripcion;
		$this->estado=$estado;	
		$this->id=$id;
		$this->id_inspeccion=$id_inspeccion;	
		$this->imei=$imei;	
	}
	public function get_codigo()
	{
		return $this->codigo;
	}
	
	public function get_descripcion()
	{
		return $this->descripcion;
	}
	public function get_estado()
	{
		return $this->estado;
	}

	public function get_id()
	{
		return $this->id;
	}
	public function get_id_inspeccion()
	{
		return $this->id_inspeccion;
	}
		public function get_imei()
	{
		return $this->imei;
	}
	
	public function guardar()
	{
		$sql="insert into detalle_inspeccion_visual(codigo,descripcion,estado,id,id_inspeccion,imei)values('$this->codigo','$this->descripcion','$this->estado','$this->id','$this->id_inspeccion','$this->imei')";
		
		if(parent::ejecutar($sql))
			return true;
		else
			return false;
	}
	public function buscar()
	{
		$sql="select * from detalle_inspeccion_visual";
		return parent::ejecutar($sql);
	}	
}

?>