from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^login/$', views.login_request, name='login'),
    url(r'^home/$', views.home, name='references'),
    url(r'^references/$', views.references),
    url(r'^signup/$', views.signup, name='signup'),
    url(r'^team/$', views.group, name='group'),
    url(r'^authenticate/$', views.authentication),

    url(r'^', views.login_request, name='login'),
]
