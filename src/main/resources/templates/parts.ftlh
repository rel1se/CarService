<#import "blocks/templates.ftlh" as t>
<@t.template user>
    <h1>Поиск заявок</h1><hr>
    <form method="get" action="/">
        <div class = "row">
            <div class = "col">
                <div class="form-group col-md-10" >
                    <label for="searchCity">Город</label>
                    <select id="searchCity" class="form-control">
                        <option value="">Город не выбран</option>
                        <option value="Москва">Москва</option>
                        <option value="Иркутск">Иркутск</option>
                        <option value="Санкт Петербург">Санкт Петербург</option>
                    </select>
                </div>
            </div>
            <div class = "col">
                <div class="form-group col-md-14">
                    <label for="searchWord">Поиск по заявкам</label>
                    <input type="text" name="searchWord" <#if searchWord??>value="${searchWord}"</#if> class="form-control" id="searchWord"><br>
                </div>
                <button style="width: 100%" type="submit" class="btn btn-dark">Поиск</button>
            </div>
        </div> <br>
    </form>
    <div class="row row-cols-1 row-cols-md-4 g-4">
        <#list parts as part>
            <div class="col">
                <a href="/part/${part.id}" class="part-link">
                    <div class="card text-white bg-dark my-3 part">
                        <img src="/images/${part.previewImageId}"
                             class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">${part.title}</h5>
                            <p class="card-text">${part.price}</p>
                        </div>
                        <div class="card-footer">
                            ${part.city}
                        </div>
                    </div>
                </a>
            </div>
        <#else>
            <h1 style="text-align: center">Не найдено</h1>
        </#list>
    </div>
</@t.template>
