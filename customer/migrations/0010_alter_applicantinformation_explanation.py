# Generated by Django 3.2.7 on 2022-05-05 13:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('master', '0003_alter_state_country'),
        ('customer', '0009_alter_applicantinformation_explanation'),
    ]

    operations = [
        migrations.AlterField(
            model_name='applicantinformation',
            name='explanation',
            field=models.ManyToManyField(blank=True, null=True, to='master.ApplicableBoxes'),
        ),
    ]
