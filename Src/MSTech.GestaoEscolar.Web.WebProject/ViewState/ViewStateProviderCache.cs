using System;
using System.Collections.Generic;
using System.Text;
using System.Web.Caching;
using System.Web;
using System.Web.SessionState;
using System.Linq;
using System.Web.Configuration;

namespace MSTech.GestaoEscolar.Web.WebProject.ViewState
{
    // Viewstate provider que � implementado usando um cache.
    
    // Gof Design Pattern: Strategy.
    public class ViewStateProviderCache : ViewStateProviderBase
    {
        // salva a informa��o do view state para uma p�gina no cache
        public override void SavePageState(string name, object viewState)
        {
            var cache = HttpContext.Current.Cache;
            //var session = HttpContext.Current.Session;
            int timeExpiration = Convert.ToInt32(WebConfigurationManager.AppSettings.Get("ViewStateCacheExpiration"));

            //cache.Add(name, viewState, null, DateTime.Now.AddMinutes(session.Timeout), TimeSpan.Zero, CacheItemPriority.Default, null);
            cache.Add(name, viewState, null, DateTime.Now.AddMinutes(timeExpiration), TimeSpan.Zero, CacheItemPriority.Default, null);
        }

        
        // retorna informa��o do viewstate para a p�gina do cache.
        public override object LoadPageState(string name)
        {
            return HttpContext.Current.Cache[name];
        }
    }
}
