from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^login/$', views.login, name='login'),
    url(r'^references/$', views.references, name='references'),
    url(r'^signup/$', views.signup, name='signup')
]
