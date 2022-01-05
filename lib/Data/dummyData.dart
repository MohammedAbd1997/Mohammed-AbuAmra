import 'package:facebook_ui/Model/PostModel.dart';
import 'package:facebook_ui/Model/StoryModel.dart';
import 'package:facebook_ui/Model/UserModel.dart';

List<UserModel> usermodeldata = [
  UserModel(
      name: "Ahmed",
      image:
          'https://media.istockphoto.com/photos/cropped-portrait-of-an-attractive-young-woman-businesswoman-working-picture-id1334647866?k=20&m=1334647866&s=612x612&w=0&h=Z7OcbKew7nyowCg14a9x5Ywg02r-ucMwm4Sv1GmHQAg='),
  UserModel(
      name: "mohammed",
      image:
          'https://media.istockphoto.com/photos/smiling-young-man-working-at-home-using-laptop-stock-photo-picture-id1263173460?k=20&m=1263173460&s=612x612&w=0&h=dVrH9m6yT6RnOa3TbpVu_jYkua1_o4pc_d0o-JC7l9o='),
  UserModel(
      name: "sammer",
      image:
          'https://media.istockphoto.com/photos/businessman-using-laptop-indoor-picture-id1336261175?k=20&m=1336261175&s=612x612&w=0&h=P2PuuZjZNxuqbvur_OpBU9faDRja6lgBvwXq_9zjf3U='),
  UserModel(
      name: "Mosa",
      image:
          'https://media.istockphoto.com/photos/young-man-having-a-conference-call-picture-id1224856092?k=20&m=1224856092&s=612x612&w=0&h=3OYv-CjsBJidw41AWAvB3Euoxurch-agKEN52LchbOw='),
  UserModel(
      name: "Assel",
      image:
          'https://media.istockphoto.com/photos/young-man-working-at-home-stock-photo-picture-id1285149357?k=20&m=1285149357&s=612x612&w=0&h=blYOon2a31fvzoW93VnwafFNC9Dmw9e8TPKdY2sPr8c='),
  UserModel(
      name: "sofia",
      image:
          'https://media.istockphoto.com/photos/young-man-working-at-home-in-the-evening-picture-id1359217322?k=20&m=1359217322&s=612x612&w=0&h=cpKN-lxmNoo8F9GAmuqy184rITpiQv5sT_VTVpBjKdw='),
  UserModel(
      name: "naeem ahmed",
      image:
          'https://media.istockphoto.com/photos/young-businessman-working-from-home-picture-id1192651287?k=20&m=1192651287&s=612x612&w=0&h=8OWgE5S_uC_x17Mv2NBfsKYEPN4kIXUKRHgBXOgocm0='),
];

List<PostModel> postmodeldata = [
  PostModel(
      userModel: usermodeldata[0],
      title: 'update his cover',
      time: '10:30',
      imagePost:
          'https://media.istockphoto.com/photos/hand-of-businesswoman-using-laptop-with-icon-social-media-and-social-picture-id1166843563?k=20&m=1166843563&s=612x612&w=0&h=uOE-ygLz8nGcZd23vOxii-DbB0lCi2IjOQQ4F-hlSmc=',
      like: 10,
      comment: 35,
      share: 2),
  PostModel(
      userModel: usermodeldata[2],
      title: 'update his cover',
      time: '11:30',
      imagePost:
          'https://media.istockphoto.com/photos/social-media-and-digital-online-concept-woman-using-smartphone-picture-id1288271580?k=20&m=1288271580&s=612x612&w=0&h=pg7liB-QEaKLKbpqBfnRpR3RgUXQJgBi0rGGGhwcMTw=',
      like: 30,
      comment: 25,
      share: 12),
  PostModel(
      userModel: usermodeldata[1],
      title: 'update his cover',
      time: '12:30',
      imagePost:
          'https://media.istockphoto.com/photos/social-networking-concept-picture-id519320978?k=20&m=519320978&s=612x612&w=0&h=arDaI0apX1YQbEdiaKLCUH_w_J-lZfUOiwi85GT324A=',
      like: 320,
      comment: 45,
      share: 11),
  PostModel(
      userModel: usermodeldata[0],
      title: 'update his cover',
      time: '10:30',
      imagePost:
          'https://media.istockphoto.com/photos/hand-of-businesswoman-using-laptop-with-icon-social-media-and-social-picture-id1166843563?k=20&m=1166843563&s=612x612&w=0&h=uOE-ygLz8nGcZd23vOxii-DbB0lCi2IjOQQ4F-hlSmc=',
      like: 10,
      comment: 35,
      share: 2),
  PostModel(
      userModel: usermodeldata[2],
      title: 'update his cover',
      time: '11:30',
      imagePost:
          'https://media.istockphoto.com/photos/social-media-and-digital-online-concept-woman-using-smartphone-picture-id1288271580?k=20&m=1288271580&s=612x612&w=0&h=pg7liB-QEaKLKbpqBfnRpR3RgUXQJgBi0rGGGhwcMTw=',
      like: 30,
      comment: 25,
      share: 12),
  PostModel(
      userModel: usermodeldata[1],
      title: 'update his cover',
      time: '12:30',
      imagePost:
          'https://media.istockphoto.com/photos/social-networking-concept-picture-id519320978?k=20&m=519320978&s=612x612&w=0&h=arDaI0apX1YQbEdiaKLCUH_w_J-lZfUOiwi85GT324A=',
      like: 320,
      comment: 45,
      share: 11)
];


List<StoryModel> storymodeldata = [StoryModel(userModel: usermodeldata[2],imagestory: 'https://media.istockphoto.com/photos/dandelion-in-field-at-sunset-air-and-blowing-picture-id1137402783?k=20&m=1137402783&s=612x612&w=0&h=R8rGy4PdOrD0pIxKFps0s-4rroGXC7ZfrKwzIJz90uo='),
  StoryModel(userModel: usermodeldata[1],imagestory: 'https://media.istockphoto.com/photos/butterflies-picture-id1201252148?k=20&m=1201252148&s=612x612&w=0&h=DqmSxEbFmB-ECunrW3eheED18pGoYOU6H4u-NQ_WT5E='),
  StoryModel(userModel: usermodeldata[0],imagestory: 'https://media.istockphoto.com/photos/sunset-over-mountain-with-cosmos-blooming-picture-id1130636356?k=20&m=1130636356&s=612x612&w=0&h=6WjrWXvknYRG7eZsCuIaLsLGb58Acv5kXvZD3YzlLzE='),
  StoryModel(userModel: usermodeldata[4],imagestory: 'https://media.istockphoto.com/photos/close-up-of-a-bunch-of-green-clover-picture-id157617234?k=20&m=157617234&s=612x612&w=0&h=R0ndgFn7-1-EHdVvpTfmhQgGvajWj7Dp6bFGqZXZmQA='),
  StoryModel(userModel: usermodeldata[4],imagestory: 'https://media.istockphoto.com/photos/closeup-of-colorful-roses-backdrop-wall-picture-id1140756861?k=20&m=1140756861&s=612x612&w=0&h=9wpJDjr15QM3xvoKKmkcsUpKUa7NsinxYwR6fbZQ1zE='),
  StoryModel(userModel: usermodeldata[4],imagestory: 'https://media.istockphoto.com/photos/white-flower-growing-on-crack-street-soft-focus-picture-id521033980?k=20&m=521033980&s=612x612&w=0&h=FIP-uWTphS8Yq2SjsiIxZtfxDZk1uDMtxxil55Dm7Jc='),

];
