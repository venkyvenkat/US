# Generated by Django 3.2.7 on 2022-05-05 07:32

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('customer', '0006_auto_20220505_1300'),
    ]

    operations = [
        migrations.AlterField(
            model_name='applicationform',
            name='alien_registration_number_status',
            field=models.BooleanField(default=False, verbose_name="I no longer have my card and can't find this information "),
        ),
        migrations.AlterField(
            model_name='applicationform',
            name='category_status',
            field=models.BooleanField(default=False, verbose_name="I no longer have my card and can't find this information"),
        ),
        migrations.AlterField(
            model_name='applicationform',
            name='resident_since_status',
            field=models.BooleanField(default=False, verbose_name="I no longer have my card and can't find this information"),
        ),
    ]