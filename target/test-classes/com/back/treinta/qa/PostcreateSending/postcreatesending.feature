#author Anderson Duque
@MiPaquete
Feature: POC Mi Paquete

  Background:
    * url urlApi
    * string apiPath = '/createSending'
    * path apiPath
    * json data = read ('classpath:com/back/treinta/qa/PostcreateSending/dataTest.json');
    * string method = 'post'


  @TEST_00001 @RC-HP
  Scenario:

    * json dataTest = data[datajson].sc01
    * configure headers = { 'session-tracker': 'a0c96ea6-b22d-4fb7-a278-850678d5429c', 'apikey': 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MTdiMzY1OWM4OTJlYzM0Y2MwNzUzYjgiLCJuYW1lIjoiVGVzdC1taS1wYXF1ZXRlLXJlYWwiLCJzdXJuYW1lIjoiSnVuaW9yIiwiZW1haWwiOiJ0ZXN0QGdtYWlsLmNvbSIsImNlbGxQaG9uZSI6IjMxNDY1NzEyMzMiLCJjcmVhdGVkQXQiOiIyMDE5LTA3LTE4VDE0OjU3OjM5LjA0NFoiLCJkYXRlIjoiMjAyMi0wMS0wOSAxMDo0OToyNiIsInBhc3N3b3JkIjoiODc2NTQzMjEiLCJpYXQiOjE2NDE3NDMzNjZ9.LancLA4k8We2p-RqTAP3e_s70DZjr5qGg1RHeij2RPA'}
    * def apiRequest = read ('com/back/treinta/qa/PostcreateSending/request.json')

    Given request apiRequest
    When method post


    * print response

