from rest_framework import serializers
from .models import CareTaker,  Houses, LandLords,  Teenants


class CareTakersSerializer(serializers.ModelSerializer):
    class Meta:
        model = CareTaker
        fields = ['user_id', 'house_id']

class LandLordsSerializer(serializers.ModelSerializer):
    class Meta:
        model = LandLords
        fields = ['user_id', 'num_houses']

class TeenantsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Teenants
        fields = ['user_id', 'house_id']

class HousesSerializers(serializers.ModelSerializer):
    class Meta:
        model = Houses
        fields = ["id","name", "rent_amount", "rating", "description", "location", "image", "image_1", "image_2", "image_3"]