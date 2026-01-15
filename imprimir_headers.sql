BEGIN
  /*Impresión unitaria de header*/
  htp.p('User-Agent: ' || owa_util.get_cgi_env('User-Agent'));
  htp.nl;
  htp.p('Authorization: ' || owa_util.get_cgi_env('Authorization'));
  htp.nl;
  htp.p('Content-Type: ' || owa_util.get_cgi_env('Content-Type'));
  htp.nl;
  htp.p('Content-Length: ' || owa_util.get_cgi_env('Content-Length'));
  htp.nl;
  htp.p('Accept: ' || owa_util.get_cgi_env('Accept'));
  htp.nl;
  htp.p('Accept-Encoding: ' || owa_util.get_cgi_env('Accept-Encoding'));
  htp.nl;
  htp.p('Host: ' || owa_util.get_cgi_env('Host'));
  htp.nl;
  htp.p('Postman-Token: ' || owa_util.get_cgi_env('Postman-Token'));
  htp.nl;
  htp.nl;

   /*Impresion de todos los heades procesados en request*/
  for i in 1..nvl (owa.num_cgi_vars, 0) loop 
    htp.p(owa.cgi_var_name (i) ||' '||owa.cgi_var_val (i));
    htp.nl;
  end loop; 
END;
