# Generated by Django 3.2.7 on 2022-05-05 13:13

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('master', '0003_alter_state_country'),
        ('customer', '0007_auto_20220505_1302'),
    ]

    operations = [
        migrations.AlterField(
            model_name='applicantinformation',
            name='preparer_appartment',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='Prefererappartment', to='master.appartmenttype'),
        ),
    ]
