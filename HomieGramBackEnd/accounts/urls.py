from django.urls import path
from .views import RegisterUsersAPIView, LoginApIView, UserSearchAPIView

urlpatterns = [
    path("signup/", RegisterUsersAPIView.as_view(), name="signup"),
    path("login/", LoginApIView.as_view(), name="login"),
    path("logout/", LoginApIView.as_view(), name="logout"),
    path('users/', UserSearchAPIView.as_view(), name='user-search'),
]