<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Fakebook</title>
    <link rel="stylesheet" href="<c:url value="/css/home.css"/>">
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"/>
</head>
<body>
<div class="app">
    <div class="nav-bar-container">
        <div class="nav-bar">
            <div class="nav-container flex-left">
                <div class="left-nav">
                    <div class="fakebook-logo">
                        <svg xmlns="http://www.w3.org/2000/svg" height="2.5em" viewBox="0 0 512 512">
                            <path d="M504 256C504 119 393 8 256 8S8 119 8 256c0 123.78 90.69 226.38 209.25 245V327.69h-63V256h63v-54.64c0-62.15 37-96.48 93.67-96.48 27.14 0 55.52 4.84 55.52 4.84v61h-31.28c-30.8 0-40.41 19.12-40.41 38.73V256h68.78l-11 71.69h-57.78V501C413.31 482.38 504 379.78 504 256z"></path>
                        </svg>
                    </div>
                    <div class="search-bar">
                        <div class="magnifier">
                            <svg xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 512 512">
                                <path d="M416 208c0 45.9-14.9 88.3-40 122.7L502.6 457.4c12.5 12.5 12.5 32.8 0 45.3s-32.8 12.5-45.3 0L330.7 376c-34.4 25.2-76.8 40-122.7 40C93.1 416 0 322.9 0 208S93.1 0 208 0S416 93.1 416 208zM208 352a144 144 0 1 0 0-288 144 144 0 1 0 0 288z"></path>
                            </svg>
                        </div>
                        <input placeholder="Search Fakebook" class="search-input">
                    </div>
                </div>
            </div>
            <div class="nav-container flex-middle">
                <ul class="middle-nav">
                    <li>
                        <div class="nav-bar-item-container">
                            <a class="nav-bar-item hover-effect">
                                <svg xmlns="http://www.w3.org/2000/svg" height="1.5em" viewBox="0 0 576 512">
                                    <path d="M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1H416 392c-22.1 0-40-17.9-40-40V448 384c0-17.7-14.3-32-32-32H256c-17.7 0-32 14.3-32 32v64 24c0 22.1-17.9 40-40 40H160 128.1c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2H104c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9 .1-2.8V287.6H32c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z"></path>
                                </svg>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="nav-bar-item-container"><a class="nav-bar-item hover-effect"><span
                                class="material-symbols-outlined">live_tv</span></a></div>
                    </li>
                    <li>
                        <div class="nav-bar-item-container">
                            <a class="nav-bar-item hover-effect">
                                <svg xmlns="http://www.w3.org/2000/svg" height="1.5em" viewBox="0 0 640 512">
                                    <path d="M96 128a128 128 0 1 1 256 0A128 128 0 1 1 96 128zM0 482.3C0 383.8 79.8 304 178.3 304h91.4C368.2 304 448 383.8 448 482.3c0 16.4-13.3 29.7-29.7 29.7H29.7C13.3 512 0 498.7 0 482.3zM609.3 512H471.4c5.4-9.4 8.6-20.3 8.6-32v-8c0-60.7-27.1-115.2-69.8-151.8c2.4-.1 4.7-.2 7.1-.2h61.4C567.8 320 640 392.2 640 481.3c0 17-13.8 30.7-30.7 30.7zM432 256c-31 0-59-12.6-79.3-32.9C372.4 196.5 384 163.6 384 128c0-26.8-6.6-52.1-18.3-74.3C384.3 40.1 407.2 32 432 32c61.9 0 112 50.1 112 112s-50.1 112-112 112z"></path>
                                </svg>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="nav-bar-item-container">
                            <a class="nav-bar-item hover-effect">
                                <svg xmlns="http://www.w3.org/2000/svg" height="1.5em" viewBox="0 0 640 512">
                                    <path d="M192 64C86 64 0 150 0 256S86 448 192 448H448c106 0 192-86 192-192s-86-192-192-192H192zM496 168a40 40 0 1 1 0 80 40 40 0 1 1 0-80zM392 304a40 40 0 1 1 80 0 40 40 0 1 1 -80 0zM168 200c0-13.3 10.7-24 24-24s24 10.7 24 24v32h32c13.3 0 24 10.7 24 24s-10.7 24-24 24H216v32c0 13.3-10.7 24-24 24s-24-10.7-24-24V280H136c-13.3 0-24-10.7-24-24s10.7-24 24-24h32V200z"></path>
                                </svg>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="body-container">
        <div class="side-bar"></div>
        <div class="main-container">
            <div class="main-content">
                <div class="story-container"></div>
                <div class="post-container">
                    <div class="box">
                        <div class="card new-post">
                            <div class="create-a-post">
                                <div class="new-post-top">
                                    <a class="mr-8">
                                        <img class="avatar"
                                             src="https://archive.org/download/twitter-default-pfp/e.png">
                                    </a>
                                    <div class="input-container">
                                        <div class="input-placeholder-text">What's on your mind?</div>
                                    </div>
                                </div>
                                <div class="new-post-bottom">
                                    <div class="bottom-item hover-effect">
                                        <span class="mr-8">
                                            <img width="24px" height="24px"
                                                 src="https://static.xx.fbcdn.net/rsrc.php/v3/yF/r/v1iF2605Cb5.png?_nc_eui2=AeHpyVrt7nEaystitC5sBR1z3Eh3Wgl8GJPcSHdaCXwYk_fL85IYTkBwXw8LeXjVoQWXcJViNOwwrCCrReIUX6nU">
                                        </span>
                                        <span class="item-text">
                                            Live video
                                        </span>
                                    </div>
                                    <div class="bottom-item hover-effect">
                                        <span class="mr-8">
                                            <img width="24px" height="24px"
                                                 src="https://static.xx.fbcdn.net/rsrc.php/v3/yC/r/a6OjkIIE-R0.png?_nc_eui2=AeHozJlMRRaw3VukzlI5RQF6fK5Z1qDG7FV8rlnWoMbsVWu3201DAYGj0QkcvOUj9tPmUtZqudlgGmgbmEXO2Av4">
                                        </span>
                                        <span class="item-text">
                                            Photo/video
                                        </span>
                                    </div>
                                    <div class="bottom-item hover-effect">
                                        <span class="mr-8">
                                            <img width="24px" height="24px"
                                                 src="https://static.xx.fbcdn.net/rsrc.php/v3/yk/r/yMDS19UDsWe.png?_nc_eui2=AeG-BaxRwbleapFIJnTcb-Riv2_PAiqLvPK_b88CKou88kFnVbI-vQv1cjmh4qIhm6Rl3oGw_p_s09sEpo_624yy">
                                        </span>
                                        <span class="item-text">
                                            Feeling/activity
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%---------Post component----------%>
                        <div class="card post">
                            <div class="post-header">
                                <a class="mr-8">
                                    <img class="avatar"
                                         src="https://archive.org/download/twitter-default-pfp/e.png">
                                </a>
                                <div class="post-author">
                                    <div class="post-author-name">
                                        <a class="link">Trung Hieu Le</a>
                                    </div>
                                    <div class="post-timestamp">
                                        <a class="link">Sunday, 5 November 2023 at 02:21</a>
                                        <span class="divider">
                                            ·
                                        </span>
                                        <span>
                                                <svg class="privacy-icon" xmlns="http://www.w3.org/2000/svg"
                                                     height="12px"
                                                     viewBox="0 0 512 512"><path
                                                        d="M57.7 193l9.4 16.4c8.3 14.5 21.9 25.2 38 29.8L163 255.7c17.2 4.9 29 20.6 29 38.5v39.9c0 11 6.2 21 16 25.9s16 14.9 16 25.9v39c0 15.6 14.9 26.9 29.9 22.6c16.1-4.6 28.6-17.5 32.7-33.8l2.8-11.2c4.2-16.9 15.2-31.4 30.3-40l8.1-4.6c15-8.5 24.2-24.5 24.2-41.7v-8.3c0-12.7-5.1-24.9-14.1-33.9l-3.9-3.9c-9-9-21.2-14.1-33.9-14.1H257c-11.1 0-22.1-2.9-31.8-8.4l-34.5-19.7c-4.3-2.5-7.6-6.5-9.2-11.2c-3.2-9.6 1.1-20 10.2-24.5l5.9-3c6.6-3.3 14.3-3.9 21.3-1.5l23.2 7.7c8.2 2.7 17.2-.4 21.9-7.5c4.7-7 4.2-16.3-1.2-22.8l-13.6-16.3c-10-12-9.9-29.5 .3-41.3l15.7-18.3c8.8-10.3 10.2-25 3.5-36.7l-2.4-4.2c-3.5-.2-6.9-.3-10.4-.3C163.1 48 84.4 108.9 57.7 193zM464 256c0-36.8-9.6-71.4-26.4-101.5L412 164.8c-15.7 6.3-23.8 23.8-18.5 39.8l16.9 50.7c3.5 10.4 12 18.3 22.6 20.9l29.1 7.3c1.2-9 1.8-18.2 1.8-27.5zM0 256a256 256 0 1 1 512 0A256 256 0 1 1 0 256z"></path></svg>
                                            </span>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div class="post-content-wrapper">
                                    <div class="post-content">
                                        Vã òn luôn.
                                        alo alo một haiiiiiii ba bốnnnnn
                                    </div>
                                </div>
                                <div class="post-attached-image">
                                    <img src="">
                                </div>
                                <div class="post-bottom">
                                    <div class="count-container">
                                        <div class="reactions-count-container">
                                            <span class="reaction-icon">
                                                <img class="reaction-icon"
                                                     src="data:image/svg+xml,%3Csvg fill='none' xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16'%3E%3Cpath d='M16.0001 7.9996c0 4.418-3.5815 7.9996-7.9995 7.9996S.001 12.4176.001 7.9996 3.5825 0 8.0006 0C12.4186 0 16 3.5815 16 7.9996Z' fill='url(%23paint0_linear_15251_63610)'/%3E%3Cpath d='M16.0001 7.9996c0 4.418-3.5815 7.9996-7.9995 7.9996S.001 12.4176.001 7.9996 3.5825 0 8.0006 0C12.4186 0 16 3.5815 16 7.9996Z' fill='url(%23paint1_radial_15251_63610)'/%3E%3Cpath d='M16.0001 7.9996c0 4.418-3.5815 7.9996-7.9995 7.9996S.001 12.4176.001 7.9996 3.5825 0 8.0006 0C12.4186 0 16 3.5815 16 7.9996Z' fill='url(%23paint2_radial_15251_63610)' fill-opacity='.5'/%3E%3Cpath d='M7.3014 3.8662a.6974.6974 0 0 1 .6974-.6977c.6742 0 1.2207.5465 1.2207 1.2206v1.7464a.101.101 0 0 0 .101.101h1.7953c.992 0 1.7232.9273 1.4917 1.892l-.4572 1.9047a2.301 2.301 0 0 1-2.2374 1.764H6.9185a.5752.5752 0 0 1-.5752-.5752V7.7384c0-.4168.097-.8278.2834-1.2005l.2856-.5712a3.6878 3.6878 0 0 0 .3893-1.6509l-.0002-.4496ZM4.367 7a.767.767 0 0 0-.7669.767v3.2598a.767.767 0 0 0 .767.767h.767a.3835.3835 0 0 0 .3835-.3835V7.3835A.3835.3835 0 0 0 5.134 7h-.767Z' fill='%23fff'/%3E%3Cdefs%3E%3CradialGradient id='paint1_radial_15251_63610' cx='0' cy='0' r='1' gradientUnits='userSpaceOnUse' gradientTransform='rotate(90 .0005 8) scale(7.99958)'%3E%3Cstop offset='.5618' stop-color='%230866FF' stop-opacity='0'/%3E%3Cstop offset='1' stop-color='%230866FF' stop-opacity='.1'/%3E%3C/radialGradient%3E%3CradialGradient id='paint2_radial_15251_63610' cx='0' cy='0' r='1' gradientUnits='userSpaceOnUse' gradientTransform='rotate(45 -4.5257 10.9237) scale(10.1818)'%3E%3Cstop offset='.3143' stop-color='%2302ADFC'/%3E%3Cstop offset='1' stop-color='%2302ADFC' stop-opacity='0'/%3E%3C/radialGradient%3E%3ClinearGradient id='paint0_linear_15251_63610' x1='2.3989' y1='2.3999' x2='13.5983' y2='13.5993' gradientUnits='userSpaceOnUse'%3E%3Cstop stop-color='%2302ADFC'/%3E%3Cstop offset='.5' stop-color='%230866FF'/%3E%3Cstop offset='1' stop-color='%232B7EFF'/%3E%3C/linearGradient%3E%3C/defs%3E%3C/svg%3E">
                                            </span>
                                            <div class="reaction-count">
                                                <span class="link">420</span>
                                            </div>
                                        </div>
                                        <div class="comment-count-container">
                                            <div class="comment-count link">
                                                69
                                            </div>
                                            <span class="comment-icon">
                                                <svg xmlns="http://www.w3.org/2000/svg" height="1em"
                                                     viewBox="0 0 512 512"
                                                     style="transform: scaleX(-1);">
                                                    <path style="fill: #606770"
                                                          d="M512 240c0 114.9-114.6 208-256 208c-37.1 0-72.3-6.4-104.1-17.9c-11.9 8.7-31.3 20.6-54.3 30.6C73.6 471.1 44.7 480 16 480c-6.5 0-12.3-3.9-14.8-9.9c-2.5-6-1.1-12.8 3.4-17.4l0 0 0 0 0 0 0 0 .3-.3c.3-.3 .7-.7 1.3-1.4c1.1-1.2 2.8-3.1 4.9-5.7c4.1-5 9.6-12.4 15.2-21.6c10-16.6 19.5-38.4 21.4-62.9C17.7 326.8 0 285.1 0 240C0 125.1 114.6 32 256 32s256 93.1 256 208z"></path></svg>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="action-btn-container">
                                        <div class="action-btn-wrapper">
                                            <div class="action-btn ">
                                                <span>
                                                <svg xmlns="http://www.w3.org/2000/svg" height="20px"
                                                     viewBox="0 0 512 512">
                                                    <path style="fill: #606770"
                                                          d="M323.8 34.8c-38.2-10.9-78.1 11.2-89 49.4l-5.7 20c-3.7 13-10.4 25-19.5 35l-51.3 56.4c-8.9 9.8-8.2 25 1.6 33.9s25 8.2 33.9-1.6l51.3-56.4c14.1-15.5 24.4-34 30.1-54.1l5.7-20c3.6-12.7 16.9-20.1 29.7-16.5s20.1 16.9 16.5 29.7l-5.7 20c-5.7 19.9-14.7 38.7-26.6 55.5c-5.2 7.3-5.8 16.9-1.7 24.9s12.3 13 21.3 13L448 224c8.8 0 16 7.2 16 16c0 6.8-4.3 12.7-10.4 15c-7.4 2.8-13 9-14.9 16.7s.1 15.8 5.3 21.7c2.5 2.8 4 6.5 4 10.6c0 7.8-5.6 14.3-13 15.7c-8.2 1.6-15.1 7.3-18 15.1s-1.6 16.7 3.6 23.3c2.1 2.7 3.4 6.1 3.4 9.9c0 6.7-4.2 12.6-10.2 14.9c-11.5 4.5-17.7 16.9-14.4 28.8c.4 1.3 .6 2.8 .6 4.3c0 8.8-7.2 16-16 16H286.5c-12.6 0-25-3.7-35.5-10.7l-61.7-41.1c-11-7.4-25.9-4.4-33.3 6.7s-4.4 25.9 6.7 33.3l61.7 41.1c18.4 12.3 40 18.8 62.1 18.8H384c34.7 0 62.9-27.6 64-62c14.6-11.7 24-29.7 24-50c0-4.5-.5-8.8-1.3-13c15.4-11.7 25.3-30.2 25.3-51c0-6.5-1-12.8-2.8-18.7C504.8 273.7 512 257.7 512 240c0-35.3-28.6-64-64-64l-92.3 0c4.7-10.4 8.7-21.2 11.8-32.2l5.7-20c10.9-38.2-11.2-78.1-49.4-89zM32 192c-17.7 0-32 14.3-32 32V448c0 17.7 14.3 32 32 32H96c17.7 0 32-14.3 32-32V224c0-17.7-14.3-32-32-32H32z"></path>
                                                </svg>
                                                </span>
                                                <div class="btn-text">
                                                    <span class="text-select-none">
                                                        Like
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="action-btn-wrapper">
                                            <div class="action-btn">
                                                <span class="text-select-none">
                                                <svg xmlns="http://www.w3.org/2000/svg" height="20px"
                                                     viewBox="0 0 512 512"
                                                     style="transform: scaleX(-1);">
                                                    >
                                                    <path style="fill: #606770"
                                                          d="M123.6 391.3c12.9-9.4 29.6-11.8 44.6-6.4c26.5 9.6 56.2 15.1 87.8 15.1c124.7 0 208-80.5 208-160s-83.3-160-208-160S48 160.5 48 240c0 32 12.4 62.8 35.7 89.2c8.6 9.7 12.8 22.5 11.8 35.5c-1.4 18.1-5.7 34.7-11.3 49.4c17-7.9 31.1-16.7 39.4-22.7zM21.2 431.9c1.8-2.7 3.5-5.4 5.1-8.1c10-16.6 19.5-38.4 21.4-62.9C17.7 326.8 0 285.1 0 240C0 125.1 114.6 32 256 32s256 93.1 256 208s-114.6 208-256 208c-37.1 0-72.3-6.4-104.1-17.9c-11.9 8.7-31.3 20.6-54.3 30.6c-15.1 6.6-32.3 12.6-50.1 16.1c-.8 .2-1.6 .3-2.4 .5c-4.4 .8-8.7 1.5-13.2 1.9c-.2 0-.5 .1-.7 .1c-5.1 .5-10.2 .8-15.3 .8c-6.5 0-12.3-3.9-14.8-9.9c-2.5-6-1.1-12.8 3.4-17.4c4.1-4.2 7.8-8.7 11.3-13.5c1.7-2.3 3.3-4.6 4.8-6.9c.1-.2 .2-.3 .3-.5z"></path>
                                                </svg>
                                                </span>
                                                <div class="btn-text">
                                                    <span>
                                                        Comment
                                                    </span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="comment-container">
                                        <%-----------Comment component----------%>
                                        <div class="comment-component">
                                            <div class="comment-author-avatar">
                                                <a>
                                                    <img style="border-radius: 50%"
                                                         src="https://archive.org/download/twitter-default-pfp/e.png"
                                                         width="32px" height="32px">
                                                </a>
                                            </div>
                                            <div class="comment-item">
                                                <div>
                                                    <div class="comment-body-wrapper">
                                                        <div class="comment-body">
                                                            <a>
                                                                <div class="comment-author-name">Trung Hieu Le</div>
                                                            </a>
                                                            <div class="comment-content">
                                                                adu vjp vcl
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="comment-footer">
                                                    <span class="comment-footer-item link">
                                                        <div>
                                                            <a>
                                                                <span>
                                                                    1 m
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </span>
                                                    <span class="comment-footer-item link bold">
                                                    <div>
                                                        <span>
                                                            Like
                                                        </span>
                                                    </div>
                                                </span>
                                                    <span class="comment-footer-item link bold">
                                                    <div>
                                                        <span>
                                                            Reply
                                                        </span>
                                                    </div>
                                                </span>
                                                </div>
                                            </div>
                                        </div>
                                        <%------------------Divide-----------%>
                                        <div class="comment-component">
                                            <div class="comment-author-avatar">
                                                <a>
                                                    <img style="border-radius: 50%"
                                                         src="https://archive.org/download/twitter-default-pfp/e.png"
                                                         width="32px" height="32px">
                                                </a>
                                            </div>
                                            <div class="comment-item">
                                                <div>
                                                    <div class="comment-body-wrapper">
                                                        <div class="comment-body">
                                                            <a>
                                                                <span class="comment-author-name">Trung Hieu Le</span>
                                                            </a>
                                                            <div class="comment-content">
                                                                adu vjp vcl dasbhvkasc v ua ykuwekaeu rvwy
                                                                aewrve awrker ukaw yukaerw kebrguyawva ukwer
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="comment-footer">
                                                    <span class="comment-footer-item link">
                                                        <div>
                                                            <a>
                                                                <span>
                                                                    1 m
                                                                </span>
                                                            </a>
                                                        </div>
                                                    </span>
                                                    <span class="comment-footer-item link bold">
                                                    <div>
                                                        <span>
                                                            Like
                                                        </span>
                                                    </div>
                                                </span>
                                                    <span class="comment-footer-item link bold">
                                                    <div>
                                                        <span>
                                                            Reply
                                                        </span>
                                                    </div>
                                                </span>
                                                </div>
                                            </div>
                                        </div>
                                        <%---------End comment component--------%>
                                        <div class="write-comment-container">
                                            <div class="write-comment">
                                                <div class="comment-author-avatar">
                                                    <a>
                                                        <img style="border-radius: 50%"
                                                             src="https://archive.org/download/twitter-default-pfp/e.png"
                                                             width="32px" height="32px">
                                                    </a>
                                                </div>
                                                <form class="comment-form">
                                                    <div class="comment-field-wrapper">
                                                        <div class="comment-field-top">
                                                            <div class="comment-field-container">
                                                                <textarea class="comment-field-input"
                                                                          data-textarea="text-area-1"
                                                                          oninput="checkTextareaContent(this)"
                                                                          rows="1"
                                                                          placeholder="Write a comment..."></textarea>
                                                            </div>
                                                            <div class="utility-top">
                                                                <ul class="utility-list">
                                                                    <li class="utility-item">
                                                                        <span class="utility-item-icon">
                                                                            <i style="background-image: url('https://static.xx.fbcdn.net/rsrc.php/v3/yM/r/ePncy4j7me6.png?_nc_eui2=AeFqJQaIDE0_Ps_TchyaK8pTNnTlQZ92riY2dOVBn3auJm7wAh0qIl8c5qI5SL7WwHG_LgyNcw5DE-FLmg0btONa'); background-position: 0px -1130px; background-size: 26px 1536px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
                                                                        </span>
                                                                    </li>
                                                                    <li class="utility-item">
                                                                        <span class="utility-item-icon">
                                                                            <i style="background-image: url('https://static.xx.fbcdn.net/rsrc.php/v3/yM/r/ePncy4j7me6.png?_nc_eui2=AeFqJQaIDE0_Ps_TchyaK8pTNnTlQZ92riY2dOVBn3auJm7wAh0qIl8c5qI5SL7WwHG_LgyNcw5DE-FLmg0btONa'); background-position: 0px -1238px; background-size: 26px 1536px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
                                                                        </span>
                                                                    </li>
                                                                    <li class="utility-item">
                                                                        <span class="utility-item-icon">
                                                                            <i style="background-image: url('https://static.xx.fbcdn.net/rsrc.php/v3/yM/r/ePncy4j7me6.png?_nc_eui2=AeFqJQaIDE0_Ps_TchyaK8pTNnTlQZ92riY2dOVBn3auJm7wAh0qIl8c5qI5SL7WwHG_LgyNcw5DE-FLmg0btONa'); background-position: 0px -1166px; background-size: 26px 1536px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
                                                                        </span>
                                                                    </li>
                                                                    <li class="utility-item">
                                                                        <span class="utility-item-icon">
                                                                            <i style="background-image: url('https://static.xx.fbcdn.net/rsrc.php/v3/yM/r/ePncy4j7me6.png?_nc_eui2=AeFqJQaIDE0_Ps_TchyaK8pTNnTlQZ92riY2dOVBn3auJm7wAh0qIl8c5qI5SL7WwHG_LgyNcw5DE-FLmg0btONa'); background-position: 0px -1274px; background-size: 26px 1536px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
                                                                        </span>
                                                                    </li>
                                                                    <li class="utility-item">
                                                                        <span class="utility-item-icon">
                                                                            <i style="background-image: url('https://static.xx.fbcdn.net/rsrc.php/v3/yM/r/ePncy4j7me6.png?_nc_eui2=AeFqJQaIDE0_Ps_TchyaK8pTNnTlQZ92riY2dOVBn3auJm7wAh0qIl8c5qI5SL7WwHG_LgyNcw5DE-FLmg0btONa'); background-position: 0px -1418px; background-size: 26px 1536px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
                                                                        </span>
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                        <div class="comment-field-bottom">
                                                            <div class="bottom-wrapper">
                                                                <div class="utility-bottom">
                                                                    <ul class="utility-list">
                                                                        <li class="utility-item">
                                                                        <span class="utility-item-icon">
                                                                            <i style="background-image: url('https://static.xx.fbcdn.net/rsrc.php/v3/yM/r/ePncy4j7me6.png?_nc_eui2=AeFqJQaIDE0_Ps_TchyaK8pTNnTlQZ92riY2dOVBn3auJm7wAh0qIl8c5qI5SL7WwHG_LgyNcw5DE-FLmg0btONa'); background-position: 0px -1130px; background-size: 26px 1536px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
                                                                        </span>
                                                                        </li>
                                                                        <li class="utility-item">
                                                                        <span class="utility-item-icon">
                                                                            <i style="background-image: url('https://static.xx.fbcdn.net/rsrc.php/v3/yM/r/ePncy4j7me6.png?_nc_eui2=AeFqJQaIDE0_Ps_TchyaK8pTNnTlQZ92riY2dOVBn3auJm7wAh0qIl8c5qI5SL7WwHG_LgyNcw5DE-FLmg0btONa'); background-position: 0px -1238px; background-size: 26px 1536px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
                                                                        </span>
                                                                        </li>
                                                                        <li class="utility-item">
                                                                        <span class="utility-item-icon">
                                                                            <i style="background-image: url('https://static.xx.fbcdn.net/rsrc.php/v3/yM/r/ePncy4j7me6.png?_nc_eui2=AeFqJQaIDE0_Ps_TchyaK8pTNnTlQZ92riY2dOVBn3auJm7wAh0qIl8c5qI5SL7WwHG_LgyNcw5DE-FLmg0btONa'); background-position: 0px -1166px; background-size: 26px 1536px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
                                                                        </span>
                                                                        </li>
                                                                        <li class="utility-item">
                                                                        <span class="utility-item-icon">
                                                                            <i style="background-image: url('https://static.xx.fbcdn.net/rsrc.php/v3/yM/r/ePncy4j7me6.png?_nc_eui2=AeFqJQaIDE0_Ps_TchyaK8pTNnTlQZ92riY2dOVBn3auJm7wAh0qIl8c5qI5SL7WwHG_LgyNcw5DE-FLmg0btONa'); background-position: 0px -1274px; background-size: 26px 1536px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
                                                                        </span>
                                                                        </li>
                                                                        <li class="utility-item">
                                                                        <span class="utility-item-icon">
                                                                            <i style="background-image: url('https://static.xx.fbcdn.net/rsrc.php/v3/yM/r/ePncy4j7me6.png?_nc_eui2=AeFqJQaIDE0_Ps_TchyaK8pTNnTlQZ92riY2dOVBn3auJm7wAh0qIl8c5qI5SL7WwHG_LgyNcw5DE-FLmg0btONa'); background-position: 0px -1418px; background-size: 26px 1536px; width: 16px; height: 16px; background-repeat: no-repeat; display: inline-block;"></i>
                                                                        </span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="send-comment">
                                                                    <button
                                                                            id="send-btn-1"
                                                                            disabled
                                                                            class="send-btn hover-effect">
                                                                    <span>
                                                                        <svg xmlns="http://www.w3.org/2000/svg"
                                                                             height="16px" viewBox="0 0 384 512"><path
                                                                                class="send-btn-svg" id="send-svg-1"
                                                                                d="M73 39c-14.8-9.1-33.4-9.4-48.5-.9S0 62.6 0 80V432c0 17.4 9.4 33.4 24.5 41.9s33.7 8.1 48.5-.9L361 297c14.3-8.7 23-24.2 23-41s-8.7-32.2-23-41L73 39z"></path></svg>
                                                                    </span>
                                                                    </button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%---------End post component----------%>
                    </div>
                </div>
            </div>
        </div>
        <div class="side-bar"></div>
    </div>
</div>
<script>
    const element = document.getElementsByClassName("post-content")[0];
    const content = element.textContent;
    const cleanedContent = content.replace(/^\s+/gm, '');
    element.textContent = cleanedContent;

    function checkTextareaContent(textarea) {
        const dataId = textarea.getAttribute('data-textarea').substring(10);
        const sendSvg = document.getElementById("send-svg-" + dataId);
        const button = document.getElementById("send-btn-" + dataId);

        if (textarea.value.trim() !== '') {
            sendSvg.style.fill = '#0062d2';
            button.style.cursor = 'pointer';
            button.removeAttribute('disabled');
        } else {
            sendSvg.style.fill = '#bec3c9';
            button.style.cursor = 'not-allowed';
            button.setAttribute('disabled', 'true');
        }
    }
</script>
</body>
</html>
