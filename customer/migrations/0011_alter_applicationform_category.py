# Generated by Django 3.2.7 on 2022-05-09 09:00

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('master', '0003_alter_state_country'),
        ('customer', '0010_alter_applicantinformation_explanation'),
    ]

    operations = [
        migrations.AlterField(
            model_name='applicationform',
            name='category',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='master.applicationcategory'),
        ),
    ]
