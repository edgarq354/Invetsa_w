<?php
include_once('clsConexion.php');
class Sistema_Integral extends Conexion
{
	private $codigo;	
	private $edad;
	private $id;
	private $id_empresa;
	private $id_galpon;
	private $id_granja;
	private $imagen1;
	private $imagen2;
	private $imagen3;
	private $imagen4;
	private $imagen5;
	private $observaciones;
	private $revision;
	private $fecha;
	private $nro_pollos;
	private $sexo;
	private $id_sqlite;
	private $imei;

	public function Sistema_Integral()
	{
		parent::Conexion();
		$this->codigo="";		
		$this->edad="";
		$this->id=0;
		$this->id_empresa="";
		$this->id_galpon="";
		$this->id_granja="";
		$this->imagen1="";
		$this->imagen2="";
		$this->imagen3="";
		$this->imagen4="";
		$this->imagen5="";
		$this->observaciones="";
		$this->revision="";
		$this->fecha="";
		$this->nro_pollos="";
		$this->sexo="";
		$this->id_sqlite="";
		$this->imei="";
		}
		
	public function Sistema_Integral2($codigo,$edad,$id,$id_empresa,$id_galpon,$id_granja,$imagen1,$imagen2,$imagen3,$imagen4,$imagen5,$observaciones,$revision,$fecha,$nro_pollos,$sexo,$id_sqlite,$imei)
	{
		$this->codigo=$codigo;
		$this->edad=$edad;	
		$this->id=$id;
		$this->id_empresa=$id_empresa;
		$this->id_galpon=$id_galpon;
		$this->id_granja=$id_granja;
		$this->imagen1=$imagen1;
		$this->imagen2=$imagen2;	
		$this->imagen3=$imagen3;
		$this->imagen4=$imagen4;
		$this->imagen5=$imagen5;
		$this->observaciones=$observaciones;
		$this->revision=$revision;
		$this->fecha=$fecha;
		$this->nro_pollos=$nro_pollos;
		$this->sexo=$sexo;
		$this->id_sqlite=$id_sqlite;
		$this->imei=$imei;
	}
	public function get_codigo()
	{
		return $this->codigo;
	}
	
	public function get_edad()
	{
		return $this->edad;
	}
	public function get_id()
	{
		return $this->id;
	}
	public function get_id_empresa()
	{
		return $this->id_empresa;
	}
	
	public function get_id_galpon()
	{
		return $this->id_galpon;
	}
	
	public function get_id_granja()
	{
		return $this->id_granja;
	}
	
	public function get_imagen1()
	{
		return $this->imagen1;
	}
	public function get_imagen2()
	{
		return $this->imagen2;
	}
	public function get_imagen3()
	{
		return $this->imagen3;
	}
	public function get_imagen4()
	{
		return $this->imagen4;
	}
	public function get_imagen5()
	{
		return $this->imagen5;
	}
	public function get_observaciones()
	{
		return $this->observaciones;
	}
	public function get_revision()
	{
		return $this->revision;
	}
	public function get_fecha()
	{
		return $this->fecha;
	}
	public function get_nro_pollos()
	{
		return $this->nro_pollos;
	}

	public function get_sexo()
	{
		return $this->sexo;
	}
	public function get_id_sqlite()
	{
		return $this->id_sqlite;
	}
	public function get_imei()
	{
		return $this->imei;
	}
	
	public function guardar()
	{
		$sql="insert into sistema_integral(codigo,edad,id,id_empresa,id_galpon,id_granja,imagen1,imagen2,imagen3,imagen4,imagen5,observaciones,revision,fecha,nro_pollos,sexo,id_sqlite,imei)values('$this->codigo','$this->edad','$this->id','$this->id_empresa','$this->id_galpon','$this->id_granja','$this->imagen1','$this->imagen2','$this->imagen3','$this->imagen4','$this->imagen5','$this->observaciones','$this->revision','$this->fecha','$this->nro_pollos','$this->id_sqlite','$this->imei')";
		if(parent::ejecutar($sql))
			return true;
		else
			return false;
	}
	public function buscar()
	{
		$sql="select * from sistema_integral";
		return parent::ejecutar($sql);
	}	
	public function existe_id_sqlite($id_sqlite,$imei)
	{
		$sql="SELECT * from sistema_integral where id_sqlite='$id_sqlite' and imei='$imei'";
		$consulta=parent::ejecutar($sql);
		
		if(mysqli_num_rows($consulta) != 0)
		{
			return true;
		}
		else
		{
			return false;
		}
	}
		public function get_id_por_sqlite($id_sqlite,$imei)
	{
		$sql="SELECT id from sistema_integral where id_sqlite='$id_sqlite' and imei='$imei' limit 1";
		$consulta=parent::ejecutar($sql);
		
		if(mysqli_num_rows($consulta) != 0)
		{
			return mysqli_fetch_assoc($consulta)['id'];
		}
		else
		{
			return "-1";
		}
	}
}

?>