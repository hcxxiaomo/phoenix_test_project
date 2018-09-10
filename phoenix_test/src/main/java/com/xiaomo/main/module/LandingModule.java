package com.xiaomo.main.module;

import org.nutz.ioc.loader.annotation.IocBean;
import org.nutz.mvc.annotation.At;
import org.nutz.mvc.annotation.Fail;
import org.nutz.mvc.annotation.Ok;

@IocBean
@At("/land")
@Ok("json")
@Fail("http:500")
public class LandingModule {

}
