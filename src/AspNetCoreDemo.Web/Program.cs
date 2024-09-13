using AspNetCoreDemo.Common;
using AspNetCoreDemo.Common.Extensions;
using AspNetCoreDemo.Common.Extensions.JWT;
using AspNetCoreDemo.Common.Extensions.Swagger;
using AspNetCoreDemo.Model.EFCore;
using AspNetCoreDemo.Repository.IRepository;
using AspNetCoreDemo.Repository.Repository.Base;
using AspNetCoreDemo.Service.IService.Base;
using AspNetCoreDemo.Service.Service.Base;
using AspNetCoreDemo.Web.Filters;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Text.Encodings.Web;
using System.Text.Unicode;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers(options =>{

    // ȫ��ע���쳣����Attribute
    options.Filters.Add<CustomExceptionFilterAttribute>();
    options.Conventions.Insert(0, new RouteConvention(new RouteAttribute("api/")));
    })
    .AddJsonOptions(options =>
    {
        // ����ļ���ȡ������������
        options.JsonSerializerOptions.Encoder = JavaScriptEncoder.Create(UnicodeRanges.All);
});

builder.Services.AddDbContext<BaseContext>(options => options.UseMySQL(builder.Configuration.GetSection("ConnectionStrings")["MysqlConnection"]));

// DI����ע��
builder.Services.DIRegisterService();

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.AddSwaggerGenExt();

#region ע����������֮��Ĺ�ϵ
builder.Services.AddSingleton<IHttpContextAccessor, HttpContextAccessor>();

builder.Services.AddScoped<IBaseContext, BaseContext>();
builder.Services.AddScoped(typeof(IBaseService<>), typeof(BaseService<>));
builder.Services.AddScoped(typeof(IBaseRepository<>), typeof(BaseRepository<>));

builder.Services.AddTransient<CustomExceptionFilterAttribute>();
#endregion

// ���AutoMapper
builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());

builder.AddModelStateValidateExt();

builder.AddJWTExt();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwaggerExt();
}
//app.UseSwaggerExt();

app.UseCustomHttpContext();
app.UseHttpsRedirection();

// ��Ȩ
app.UseAuthentication();
// ��Ȩ
app.UseAuthorization();

app.MapControllers();

app.Run();
