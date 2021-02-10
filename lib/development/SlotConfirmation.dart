import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_health_assistant/Constants.dart';

class SlotConfirmation
{
  Future<void> slotConfirmation() async
  {
    int slot=Constants.slotSelected;
    String key="1100";
    if(slot == 4)
      {
        key='1200';
      }
    if(slot == 5)
    {
      key='1300';
    }
    if(slot == 6)
    {
      key='1600';
    }
    if(slot == 7)
    {
      key='1700';
    }
    if(slot == 8)
    {
      key='1800';
    }
    await FirebaseFirestore.instance.collection('doctor')
    .doc(Constants.d.first)
    .update(
      {
        key : 'unavailabe'
      }
    );
  }
}