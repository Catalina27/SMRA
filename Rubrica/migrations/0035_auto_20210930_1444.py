# Generated by Django 2.1.2 on 2021-09-30 17:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('Rubrica', '0034_aplicar_rubrica_grupo'),
    ]

    operations = [
        migrations.AlterField(
            model_name='aplicar_rubrica',
            name='grupo',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='Curso.Grupos'),
        ),
    ]
