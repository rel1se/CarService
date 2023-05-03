<#import "blocks/templates.ftlh" as t>
<@t.template user>



<#--    <div id="carouselExample" class="carousel slide">-->
<#--        <ol class="carousel-indicators">-->
<#--            <#list images as image>-->
<#--                <li data-target="#myCarousel" data-slide-to="0" class=""></li>-->
<#--            </#list>-->
<#--        </ol>-->
<#--        <div class="carousel-inner">-->
<#--            <#list images as image>-->
<#--                <div class="carousel-item active">-->
<#--                    <a href="/images/${image.id}">-->
<#--                        <img class="part" style="height: 300px" src="/images/${image.id}">-->
<#--                    </a>-->
<#--                </div>-->
<#--            &lt;#&ndash;                <div class="carousel-item">&ndash;&gt;-->
<#--            &lt;#&ndash;                    <a href="/images/${image.id}">&ndash;&gt;-->
<#--            &lt;#&ndash;                        <img class="part" style="height: 100px" src="/images/${image.id}">&ndash;&gt;-->
<#--            &lt;#&ndash;                    </a>&ndash;&gt;-->
<#--            &lt;#&ndash;                </div>&ndash;&gt;-->
<#--            &lt;#&ndash;                <div class="carousel-item">&ndash;&gt;-->
<#--            &lt;#&ndash;                    <a href="/images/${image.id}">&ndash;&gt;-->
<#--            &lt;#&ndash;                        <img class="part" style="height: 100px" src="/images/${image.id}">&ndash;&gt;-->
<#--            &lt;#&ndash;                    </a>&ndash;&gt;-->
<#--            &lt;#&ndash;                </div>&ndash;&gt;-->
<#--            </#list>-->
<#--        </div>-->
<#--        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">-->
<#--            <span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
<#--            <span class="visually-hidden">Previous</span>-->
<#--        </button>-->
<#--        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">-->
<#--            <span class="carousel-control-next-icon" aria-hidden="true"></span>-->
<#--            <span class="visually-hidden">Next</span>-->
<#--        </button>-->
<#--    </div>-->



<#--    <div id="myCarousel" class="carousel slide" data-ride="carousel">-->
<#--        <ol class="carousel-indicators">-->
<#--            <#list images as image>-->
<#--                <li data-target="#myCarousel" data-slide-to="0" class=""></li>-->
<#--            </#list>-->
<#--        </ol>-->
<#--        <div class="carousel-inner" height="800px">-->
<#--            <#list images as image>-->
<#--                <div class="carousel-item <#if image.previewImage>active</#if>">-->
<#--                    <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg"-->
<#--                         role="img" aria-label=" : " preserveAspectRatio="xMidYMid slice" focusable="false">-->
<#--                        <title></title>-->
<#--                        <rect width="100%" height="100%" fill="#777"></rect>-->
<#--                        <text x="50%" y="50%" fill="#777" dy=".3em"></text>-->
<#--                    </svg>-->

<#--                    <div class="container">-->
<#--                        <div class="carousel-caption">-->
<#--                            <a href="/images/${image.id}">-->
<#--                                <img class="product" style="height: 100px" src="/images/${image.id}">-->
<#--                            </a>-->
<#--                        </div>-->
<#--                    </div>-->
<#--                </div>-->
<#--            </#list>-->

<#--        </div>-->
<#--        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">-->
<#--            <span class="carousel-control-prev-icon" aria-hidden="true"></span>-->
<#--            <span class="sr-only">Previous</span>-->
<#--        </a>-->
<#--        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">-->
<#--            <span class="carousel-control-next-icon" aria-hidden="true"></span>-->
<#--            <span class="sr-only">Next</span>-->
<#--        </a>-->
<#--    </div>-->


    <div id="carouselExampleDark" class="carousel carousel-dark slide">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <#list images as image>
                <div class="carousel-item <#if image.previewImage>active</#if>">
                <img src="/images/${image.id}" class="d-block w-100" alt="...">
            </div>
            </#list>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <hr>
    <p><h1 style="text-align: center">${part.title} | ${part.price} г.в.</h1></p>
    <p style="text-align: center">${part.description}</p>
    <p style="text-align: center">Номер телефона клиента: <b>${authorPart.phoneNumber}</b></p>

    <hr>
    <p style="text-align: center">
        <a href="/user/${authorPart.id}">
            <img src="/static/images/avatar.png" alt="mdo" width="32" height="32" class="rounded-circle"> ${authorPart.name}
        </a>
    </p>
</@t.template>