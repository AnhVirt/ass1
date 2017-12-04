<?php 

	class Session{
		public static function init()
		{
			@session_start();
		}
		
		public static function set($key, $value)
		{
			$_SESSION[$key] = $value;
		}
		
		public static function get($key,$post =false)
		{
			if ($post == true)
			{
				if (isset($_SESSION[$key]))
				return $_SESSION[$key];
			}
			else{
				if (isset($_SESSION[$key]))
					return $_SESSION[$key];
				else 
					header('Location: /',true,301);
				}
		}
		
		public static function destroy()
		{
			//unset($_SESSION);
			session_destroy();
			echo $_SESSION["email"];
			header('Location: /',true,301);
		}
		


	}


 ?>